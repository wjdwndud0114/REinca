.class public final Lcom/tapjoy/internal/gm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/fy;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Ljava/util/concurrent/ScheduledFuture;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fy;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/gm$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gm$1;-><init>(Lcom/tapjoy/internal/gm;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->d:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/tapjoy/internal/gm$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gm$2;-><init>(Lcom/tapjoy/internal/gm;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->e:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/tapjoy/internal/gm;->a:Lcom/tapjoy/internal/fy;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/tapjoy/internal/gm;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
