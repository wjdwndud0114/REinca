.class public Lcom/igaworks/util/NonUIThreadService;
.super Ljava/lang/Object;
.source "NonUIThreadService.java"


# static fields
.field private static final THREADPOOL:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/util/NonUIThreadService;->THREADPOOL:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runButNotOn(Ljava/lang/Runnable;Ljava/lang/Thread;)V
    .locals 1
    .param p0, "toRun"    # Ljava/lang/Runnable;
    .param p1, "notOn"    # Ljava/lang/Thread;

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 32
    sget-object v0, Lcom/igaworks/util/NonUIThreadService;->THREADPOOL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
