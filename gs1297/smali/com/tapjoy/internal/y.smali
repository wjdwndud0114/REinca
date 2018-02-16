.class public final Lcom/tapjoy/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static volatile c:Z

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:J

.field private static volatile f:J

.field private static volatile g:J

.field private static volatile h:J

.field private static volatile i:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 19
    const-string v1, "pool.ntp.org"

    sput-object v1, Lcom/tapjoy/internal/y;->a:Ljava/lang/String;

    .line 20
    const-wide/16 v2, 0x4e20

    sput-wide v2, Lcom/tapjoy/internal/y;->b:J

    .line 22
    sput-boolean v0, Lcom/tapjoy/internal/y;->c:Z

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 33
    const-string v1, "System"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/y;->a(ZLjava/lang/String;JJJ)V

    .line 34
    return-void
.end method

.method public static a(J)J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static declared-synchronized a(ZLjava/lang/String;JJJ)V
    .locals 6

    .prologue
    .line 46
    const-class v1, Lcom/tapjoy/internal/y;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/tapjoy/internal/y;->c:Z

    .line 47
    sput-object p1, Lcom/tapjoy/internal/y;->d:Ljava/lang/String;

    .line 48
    sput-wide p2, Lcom/tapjoy/internal/y;->e:J

    .line 49
    sput-wide p4, Lcom/tapjoy/internal/y;->f:J

    .line 50
    sput-wide p6, Lcom/tapjoy/internal/y;->g:J

    .line 51
    sget-wide v2, Lcom/tapjoy/internal/y;->e:J

    sget-wide v4, Lcom/tapjoy/internal/y;->f:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/y;->h:J

    .line 1072
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v2, v4

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/y;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 56
    sget-object v1, Lcom/tapjoy/internal/y;->a:Ljava/lang/String;

    .line 57
    sget-wide v2, Lcom/tapjoy/internal/y;->b:J

    .line 58
    new-instance v6, Lcom/tapjoy/internal/fk;

    invoke-direct {v6}, Lcom/tapjoy/internal/fk;-><init>()V

    .line 59
    long-to-int v2, v2

    invoke-virtual {v6, v1, v2}, Lcom/tapjoy/internal/fk;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "SNTP"

    .line 1146
    iget-wide v2, v6, Lcom/tapjoy/internal/fk;->a:J

    .line 1156
    iget-wide v4, v6, Lcom/tapjoy/internal/fk;->b:J

    .line 1165
    iget-wide v6, v6, Lcom/tapjoy/internal/fk;->c:J

    .line 61
    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    .line 60
    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/y;->a(ZLjava/lang/String;JJJ)V

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/tapjoy/internal/y;->c:Z

    return v0
.end method
