.class public Lcom/igaworks/util/bolts_task/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;,
        Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static TASK_CANCELLED:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;"
        }
    .end annotation
.end field

.field private static TASK_FALSE:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static TASK_NULL:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;"
        }
    .end annotation
.end field

.field private static TASK_TRUE:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile unobservedExceptionHandler:Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private errorHasBeenObserved:Z

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private unobservedErrorNotifier:Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-static {}, Lcom/igaworks/util/bolts_task/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, Lcom/igaworks/util/bolts_task/BoltsExecutors;->immediate()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {}, Lcom/igaworks/util/bolts_task/AndroidExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1027
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igaworks/util/bolts_task/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->TASK_NULL:Lcom/igaworks/util/bolts_task/Task;

    .line 1028
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igaworks/util/bolts_task/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->TASK_TRUE:Lcom/igaworks/util/bolts_task/Task;

    .line 1029
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igaworks/util/bolts_task/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->TASK_FALSE:Lcom/igaworks/util/bolts_task/Task;

    .line 1030
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {v0, v2}, Lcom/igaworks/util/bolts_task/Task;-><init>(Z)V

    sput-object v0, Lcom/igaworks/util/bolts_task/Task;->TASK_CANCELLED:Lcom/igaworks/util/bolts_task/Task;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    .line 104
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task;->trySetResult(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "cancelled"    # Z

    .prologue
    .line 107
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->trySetCancelled()Z

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/util/bolts_task/Task;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/TaskCompletionSource;
    .param p1, "x1"    # Lcom/igaworks/util/bolts_task/Continuation;
    .param p2, "x2"    # Lcom/igaworks/util/bolts_task/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CancellationToken;

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/igaworks/util/bolts_task/Task;->completeImmediately(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    return-void
.end method

.method static synthetic access$100(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/TaskCompletionSource;
    .param p1, "x1"    # Lcom/igaworks/util/bolts_task/Continuation;
    .param p2, "x2"    # Lcom/igaworks/util/bolts_task/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CancellationToken;

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/igaworks/util/bolts_task/Task;->completeAfterTask(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    return-void
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    new-instance v1, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 348
    .local v1, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    :try_start_0
    new-instance v2, Lcom/igaworks/util/bolts_task/Task$4;

    invoke-direct {v2, p2, v1, p0}, Lcom/igaworks/util/bolts_task/Task$4;-><init>(Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    return-object v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/igaworks/util/bolts_task/ExecutorException;

    invoke-direct {v2, v0}, Lcom/igaworks/util/bolts_task/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0, p1}, Lcom/igaworks/util/bolts_task/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static cancelled()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->TASK_CANCELLED:Lcom/igaworks/util/bolts_task/Task;

    return-object v0
.end method

.method private static completeAfterTask(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/TaskCompletionSource",
            "<TTContinuationResult;>;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    .local p2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    :try_start_0
    new-instance v1, Lcom/igaworks/util/bolts_task/Task$15;

    invoke-direct {v1, p4, p0, p1, p2}, Lcom/igaworks/util/bolts_task/Task$15;-><init>(Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/igaworks/util/bolts_task/ExecutorException;

    invoke-direct {v1, v0}, Lcom/igaworks/util/bolts_task/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static completeImmediately(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/TaskCompletionSource",
            "<TTContinuationResult;>;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    .local p2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    :try_start_0
    new-instance v1, Lcom/igaworks/util/bolts_task/Task$14;

    invoke-direct {v1, p4, p0, p1, p2}, Lcom/igaworks/util/bolts_task/Task$14;-><init>(Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/igaworks/util/bolts_task/ExecutorException;

    invoke-direct {v1, v0}, Lcom/igaworks/util/bolts_task/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static create()Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/Task;-><init>()V

    .line 120
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    new-instance v1, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;-><init>(Lcom/igaworks/util/bolts_task/Task;)V

    return-object v1
.end method

.method public static delay(J)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p0, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/igaworks/util/bolts_task/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static delay(JLcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "cancellationToken"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/igaworks/util/bolts_task/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .param p0, "delay"    # J
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "cancellationToken"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/igaworks/util/bolts_task/CancellationToken;->isCancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->cancelled()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    .line 261
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 262
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    goto :goto_0

    .line 265
    :cond_1
    new-instance v1, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 266
    .local v1, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v2, Lcom/igaworks/util/bolts_task/Task$1;

    invoke-direct {v2, v1}, Lcom/igaworks/util/bolts_task/Task$1;-><init>(Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 273
    .local v0, "scheduled":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz p3, :cond_2

    .line 274
    new-instance v2, Lcom/igaworks/util/bolts_task/Task$2;

    invoke-direct {v2, v0, v1}, Lcom/igaworks/util/bolts_task/Task$2;-><init>(Ljava/util/concurrent/ScheduledFuture;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V

    invoke-virtual {p3, v2}, Lcom/igaworks/util/bolts_task/CancellationToken;->register(Ljava/lang/Runnable;)Lcom/igaworks/util/bolts_task/CancellationTokenRegistration;

    .line 283
    :cond_2
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    goto :goto_0
.end method

.method public static forError(Ljava/lang/Exception;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p0, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 222
    .local v0, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 223
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    return-object v1
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "value":Ljava/lang/Object;, "TTResult;"
    if-nez p0, :cond_0

    .line 207
    sget-object v1, Lcom/igaworks/util/bolts_task/Task;->TASK_NULL:Lcom/igaworks/util/bolts_task/Task;

    .line 214
    .local v0, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    :goto_0
    return-object v1

    .line 209
    .end local v0    # "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 210
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/igaworks/util/bolts_task/Task;->TASK_TRUE:Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/igaworks/util/bolts_task/Task;->TASK_FALSE:Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0

    .line 212
    .restart local p0    # "value":Ljava/lang/Object;, "TTResult;"
    :cond_2
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 213
    .restart local v0    # "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUnobservedExceptionHandler()Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->unobservedExceptionHandler:Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;

    return-object v0
.end method

.method private runContinuations()V
    .locals 5

    .prologue
    .line 953
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v3, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 954
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    .local v0, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;*>;"
    :try_start_1
    invoke-interface {v0, p0}, Lcom/igaworks/util/bolts_task/Continuation;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 964
    .end local v0    # "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;*>;"
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 959
    .restart local v0    # "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;*>;"
    :catch_1
    move-exception v1

    .line 960
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 963
    .end local v0    # "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    .line 964
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    return-void
.end method

.method public static setUnobservedExceptionHandler(Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;)V
    .locals 0
    .param p0, "eh"    # Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;

    .prologue
    .line 88
    sput-object p0, Lcom/igaworks/util/bolts_task/Task;->unobservedExceptionHandler:Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;

    .line 89
    return-void
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/igaworks/util/bolts_task/Task<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    .line 529
    :cond_0
    new-instance v5, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v5}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 530
    .local v5, "allFinished":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, "causes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 532
    .local v1, "errorLock":Ljava/lang/Object;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 533
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 535
    .local v3, "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igaworks/util/bolts_task/Task;

    .line 537
    .local v7, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<*>;"
    move-object v6, v7

    .line 538
    .local v6, "t":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/Task$8;

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/Task$8;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V

    invoke-virtual {v6, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_1

    .line 572
    .end local v6    # "t":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    .end local v7    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<*>;"
    :cond_1
    invoke-virtual {v5}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static whenAllResult(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/List",
            "<TTResult;>;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/igaworks/util/bolts_task/Task<TTResult;>;>;"
    invoke-static {p0}, Lcom/igaworks/util/bolts_task/Task;->whenAll(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/util/bolts_task/Task$7;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/Task$7;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static whenAny(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/igaworks/util/bolts_task/Task<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 440
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 459
    :goto_0
    return-object v3

    .line 443
    :cond_0
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 444
    .local v0, "firstCompleted":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<Lcom/igaworks/util/bolts_task/Task<*>;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 446
    .local v1, "isAnyTaskComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/util/bolts_task/Task;

    .line 447
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<*>;"
    new-instance v4, Lcom/igaworks/util/bolts_task/Task$6;

    invoke-direct {v4, v1, v0}, Lcom/igaworks/util/bolts_task/Task$6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V

    invoke-virtual {v2, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_1

    .line 459
    .end local v2    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<*>;"
    :cond_1
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    goto :goto_0
.end method

.method public static whenAnyResult(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/igaworks/util/bolts_task/Task<TTResult;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 403
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 422
    :goto_0
    return-object v3

    .line 406
    :cond_0
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 407
    .local v0, "firstCompleted":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<Lcom/igaworks/util/bolts_task/Task<TTResult;>;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 409
    .local v1, "isAnyTaskComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/util/bolts_task/Task;

    .line 410
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    new-instance v4, Lcom/igaworks/util/bolts_task/Task$5;

    invoke-direct {v4, v1, v0}, Lcom/igaworks/util/bolts_task/Task$5;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V

    invoke-virtual {v2, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_1

    .line 422
    .end local v2    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public cast()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTOut;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    move-object v0, p0

    .line 293
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTOut;>;"
    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p3, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 7
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    new-instance v6, Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {v6}, Lcom/igaworks/util/bolts_task/Capture;-><init>()V

    .line 611
    .local v6, "predicateContinuation":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/Task$9;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/util/bolts_task/Task$9;-><init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/CancellationToken;Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/Capture;)V

    invoke-virtual {v6, v0}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 625
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    invoke-virtual {v6}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/Continuation;

    invoke-virtual {v1, v0, p3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v2, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 648
    .local v2, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v7, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCompleted()Z

    move-result v6

    .line 650
    .local v6, "completed":Z
    if-nez v6, :cond_0

    .line 651
    iget-object v8, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    new-instance v0, Lcom/igaworks/util/bolts_task/Task$10;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/Task$10;-><init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    if-eqz v6, :cond_1

    .line 661
    invoke-static {v2, p1, p0, p2, p3}, Lcom/igaworks/util/bolts_task/Task;->completeImmediately(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    .line 663
    :cond_1
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0

    .line 659
    .end local v6    # "completed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    new-instance v2, Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 702
    .local v2, "tcs":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v7, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCompleted()Z

    move-result v6

    .line 704
    .local v6, "completed":Z
    if-nez v6, :cond_0

    .line 705
    iget-object v8, p0, Lcom/igaworks/util/bolts_task/Task;->continuations:Ljava/util/List;

    new-instance v0, Lcom/igaworks/util/bolts_task/Task$11;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/Task$11;-><init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    if-eqz v6, :cond_1

    .line 715
    invoke-static {v2, p1, p0, p2, p3}, Lcom/igaworks/util/bolts_task/Task;->completeAfterTask(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    .line 717
    :cond_1
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0

    .line 713
    .end local v6    # "completed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 164
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->errorHasBeenObserved:Z

    .line 167
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->unobservedErrorNotifier:Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->unobservedErrorNotifier:Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;->setObserved()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->unobservedErrorNotifier:Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->error:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->result:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->cancelled:Z

    monitor-exit v1

    return v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    monitor-exit v1

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFaulted()Z
    .locals 2

    .prologue
    .line 146
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeVoid()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/Task$3;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/Task$3;-><init>(Lcom/igaworks/util/bolts_task/Task;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/Task$12;

    invoke-direct {v0, p0, p3, p1}, Lcom/igaworks/util/bolts_task/Task$12;-><init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/igaworks/util/bolts_task/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TTResult;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/igaworks/util/bolts_task/CancellationToken;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "continuation":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<TTResult;Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/Task$13;

    invoke-direct {v0, p0, p3, p1}, Lcom/igaworks/util/bolts_task/Task$13;-><init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method trySetCancelled()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    const/4 v0, 0x1

    .line 971
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-boolean v2, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    if-eqz v2, :cond_0

    .line 973
    const/4 v0, 0x0

    monitor-exit v1

    .line 979
    :goto_0
    return v0

    .line 975
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    .line 976
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/util/bolts_task/Task;->cancelled:Z

    .line 977
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 978
    invoke-direct {p0}, Lcom/igaworks/util/bolts_task/Task;->runContinuations()V

    .line 979
    monitor-exit v1

    goto :goto_0

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method trySetError(Ljava/lang/Exception;)Z
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1003
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1004
    :try_start_0
    iget-boolean v3, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    if-eqz v3, :cond_0

    .line 1005
    monitor-exit v2

    .line 1014
    :goto_0
    return v0

    .line 1007
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    .line 1008
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task;->error:Ljava/lang/Exception;

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->errorHasBeenObserved:Z

    .line 1010
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1011
    invoke-direct {p0}, Lcom/igaworks/util/bolts_task/Task;->runContinuations()V

    .line 1012
    iget-boolean v0, p0, Lcom/igaworks/util/bolts_task/Task;->errorHasBeenObserved:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->getUnobservedExceptionHandler()Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    new-instance v0, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;-><init>(Lcom/igaworks/util/bolts_task/Task;)V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->unobservedErrorNotifier:Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;

    .line 1014
    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method trySetResult(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    const/4 v0, 0x1

    .line 987
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-boolean v2, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    if-eqz v2, :cond_0

    .line 989
    const/4 v0, 0x0

    monitor-exit v1

    .line 995
    :goto_0
    return v0

    .line 991
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/util/bolts_task/Task;->complete:Z

    .line 992
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task;->result:Ljava/lang/Object;

    .line 993
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 994
    invoke-direct {p0}, Lcom/igaworks/util/bolts_task/Task;->runContinuations()V

    .line 995
    monitor-exit v1

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 184
    :cond_0
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task;->lock:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCompleted()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
