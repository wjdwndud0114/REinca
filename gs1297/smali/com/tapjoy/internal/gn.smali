.class public final Lcom/tapjoy/internal/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final b:Ljava/util/concurrent/CountDownLatch;

.field public static final c:Ljava/util/concurrent/CountDownLatch;

.field private static final d:Ljava/lang/Runnable;

.field private static e:Ljava/lang/String;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/internal/gn;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    new-instance v0, Lcom/tapjoy/internal/gn$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gn$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gn;->d:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/tapjoy/internal/gn;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 43
    sput-object p0, Lcom/tapjoy/internal/gn;->e:Ljava/lang/String;

    .line 44
    sput-boolean p1, Lcom/tapjoy/internal/gn;->f:Z

    .line 45
    sget-object v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tapjoy/internal/gn;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/tapjoy/internal/gn;->f:Z

    return v0
.end method
