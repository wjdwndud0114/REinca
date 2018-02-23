.class public abstract Lcom/tapjoy/internal/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tapjoy/internal/hm;->a:J

    .line 10
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tapjoy/internal/hm;->a:J

    add-long/2addr v0, v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/hm;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 19
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 28
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    :cond_0
    return-void
.end method
