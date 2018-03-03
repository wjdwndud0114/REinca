.class public final Lcom/tapjoy/internal/fy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/gc;

.field final b:Lcom/tapjoy/internal/fx;

.field c:J

.field private d:I

.field private final e:Lcom/tapjoy/internal/ea$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gc;Lcom/tapjoy/internal/fx;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/fy;->d:I

    .line 60
    new-instance v0, Lcom/tapjoy/internal/ea$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ea$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    .line 66
    iput-object p2, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fx;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ee;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/tapjoy/internal/dy$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/dy$a;-><init>()V

    .line 284
    sget-object v2, Lcom/tapjoy/internal/gc;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->g:Ljava/lang/String;

    .line 285
    iput-object p1, v1, Lcom/tapjoy/internal/dy$a;->c:Lcom/tapjoy/internal/eb;

    .line 286
    iput-object p2, v1, Lcom/tapjoy/internal/dy$a;->d:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->e:Ljava/lang/Long;

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->f:Ljava/lang/Long;

    .line 296
    :goto_0
    iget-object v2, v0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/internal/ed;

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->j:Lcom/tapjoy/internal/ed;

    .line 297
    iget-object v2, v0, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/internal/dx;

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->k:Lcom/tapjoy/internal/dx;

    .line 298
    iget-object v0, v0, Lcom/tapjoy/internal/ee;->f:Lcom/tapjoy/internal/ek;

    iput-object v0, v1, Lcom/tapjoy/internal/dy$a;->l:Lcom/tapjoy/internal/ek;

    .line 299
    return-object v1

    .line 292
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->e:Ljava/lang/Long;

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->h:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/dy$a;)V
    .locals 5

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/tapjoy/internal/dy$a;->c:Lcom/tapjoy/internal/eb;

    sget-object v1, Lcom/tapjoy/internal/eb;->USAGES:Lcom/tapjoy/internal/eb;

    if-eq v0, v1, :cond_1

    .line 304
    iget v0, p0, Lcom/tapjoy/internal/fy;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tapjoy/internal/fy;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/dy$a;->n:Ljava/lang/Integer;

    .line 305
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ea$a;->c:Lcom/tapjoy/internal/eb;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ea$a;->b()Lcom/tapjoy/internal/ea;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/dy$a;->o:Lcom/tapjoy/internal/ea;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    iget-object v1, p1, Lcom/tapjoy/internal/dy$a;->c:Lcom/tapjoy/internal/eb;

    iput-object v1, v0, Lcom/tapjoy/internal/ea$a;->c:Lcom/tapjoy/internal/eb;

    .line 310
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    iget-object v1, p1, Lcom/tapjoy/internal/dy$a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ea$a;->d:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/ea$a;

    iget-object v1, p1, Lcom/tapjoy/internal/dy$a;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ea$a;->e:Ljava/lang/String;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fx;

    invoke-virtual {p1}, Lcom/tapjoy/internal/dy$a;->b()Lcom/tapjoy/internal/dy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2214
    :try_start_1
    iget-object v2, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    .line 3122
    iget-object v3, v2, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3124
    :try_start_2
    iget-object v4, v2, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v4, v1}, Lcom/tapjoy/internal/bc;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3133
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2220
    :try_start_4
    iget-object v2, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    if-eqz v2, :cond_4

    .line 4017
    sget-boolean v2, Lcom/tapjoy/internal/fw;->a:Z

    .line 2221
    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/tapjoy/internal/dy;->n:Lcom/tapjoy/internal/eb;

    sget-object v2, Lcom/tapjoy/internal/eb;->CUSTOM:Lcom/tapjoy/internal/eb;

    if-eq v1, v2, :cond_3

    .line 2223
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2226
    :goto_1
    monitor-exit p0

    return-void

    .line 3126
    :catch_0
    move-exception v4

    :try_start_5
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3128
    :try_start_6
    iget-object v2, v2, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v2, v1}, Lcom/tapjoy/internal/bc;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .line 3133
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2217
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2226
    :cond_3
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->a(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 303
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2229
    :cond_4
    :try_start_a
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v3, p0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    .line 1460
    monitor-enter v3

    .line 1463
    :try_start_0
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gj;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1464
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1465
    iget-object v0, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1466
    iget-object v0, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 1467
    iget-object v0, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v0

    add-double/2addr v0, p3

    .line 1468
    iget-object v5, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v5, v5, Lcom/tapjoy/internal/gj;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v5, v4, v0, v1}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 1469
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1484
    :goto_0
    iget-object v4, v3, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/tapjoy/internal/ek$a;->m:Ljava/lang/Integer;

    .line 1485
    iget-object v2, v3, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->n:Ljava/lang/Double;

    .line 1486
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sget-object v0, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v1, "purchase"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/tapjoy/internal/eg$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/eg$a;-><init>()V

    .line 123
    iput-object p1, v1, Lcom/tapjoy/internal/eg$a;->c:Ljava/lang/String;

    .line 124
    if-eqz p2, :cond_0

    .line 125
    iput-object p2, v1, Lcom/tapjoy/internal/eg$a;->f:Ljava/lang/String;

    .line 127
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/eg$a;->e:Ljava/lang/Double;

    .line 128
    if-eqz p7, :cond_1

    .line 129
    iput-object p7, v1, Lcom/tapjoy/internal/eg$a;->m:Ljava/lang/String;

    .line 131
    :cond_1
    if-eqz p5, :cond_2

    .line 132
    iput-object p5, v1, Lcom/tapjoy/internal/eg$a;->o:Ljava/lang/String;

    .line 134
    :cond_2
    if-eqz p6, :cond_3

    .line 135
    iput-object p6, v1, Lcom/tapjoy/internal/eg$a;->p:Ljava/lang/String;

    .line 137
    :cond_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/eg$a;->b()Lcom/tapjoy/internal/eg;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/dy$a;->p:Lcom/tapjoy/internal/eg;

    .line 138
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 140
    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    iget-object v0, v0, Lcom/tapjoy/internal/dy$a;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1490
    monitor-enter v1

    .line 1491
    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gj;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1492
    iget-object v4, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v4, v4, Lcom/tapjoy/internal/gj;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 1493
    iget-object v4, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v4, v4, Lcom/tapjoy/internal/gj;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v4, v0, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 1494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1496
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->o:Ljava/lang/Long;

    .line 1497
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->p:Ljava/lang/Double;

    .line 1498
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1471
    :cond_4
    :try_start_2
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v4, p2}, Lcom/tapjoy/internal/q;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1473
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->m:Lcom/tapjoy/internal/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 1475
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4, p3, p4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 1476
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 1477
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 1478
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1480
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->l:Ljava/lang/String;

    .line 1481
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/ek$a;->o:Ljava/lang/Long;

    .line 1482
    iget-object v1, v3, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/ek$a;->p:Ljava/lang/Double;

    move v2, v0

    move-wide v0, p3

    goto/16 :goto_0

    .line 1486
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1498
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    .locals 6

    .prologue
    .line 268
    sget-object v0, Lcom/tapjoy/internal/eb;->USAGES:Lcom/tapjoy/internal/eb;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v2

    .line 269
    iput-object p2, v2, Lcom/tapjoy/internal/dy$a;->x:Ljava/lang/String;

    .line 270
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/dy$a;->y:Ljava/lang/Integer;

    .line 271
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/dy$a;->z:Ljava/lang/Long;

    .line 272
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/dy$a;->A:Ljava/lang/Long;

    .line 273
    if-eqz p8, :cond_0

    .line 274
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    iget-object v4, v2, Lcom/tapjoy/internal/dy$a;->w:Ljava/util/List;

    new-instance v5, Lcom/tapjoy/internal/ec;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {v5, v1, v0}, Lcom/tapjoy/internal/ec;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 279
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 229
    sget-object v0, Lcom/tapjoy/internal/eb;->CUSTOM:Lcom/tapjoy/internal/eb;

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v2

    .line 230
    iput-object p1, v2, Lcom/tapjoy/internal/dy$a;->t:Ljava/lang/String;

    .line 231
    iput-object p3, v2, Lcom/tapjoy/internal/dy$a;->u:Ljava/lang/String;

    .line 232
    iput-object p4, v2, Lcom/tapjoy/internal/dy$a;->v:Ljava/lang/String;

    .line 233
    if-eqz p5, :cond_0

    .line 234
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    iget-object v4, v2, Lcom/tapjoy/internal/dy$a;->w:Ljava/util/List;

    new-instance v5, Lcom/tapjoy/internal/ec;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {v5, v1, v0}, Lcom/tapjoy/internal/ec;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 239
    return-void
.end method
