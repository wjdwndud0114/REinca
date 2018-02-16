.class public Lcom/igaworks/util/image/AsyncExecutor;
.super Landroid/os/AsyncTask;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncExecutor"


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private callback:Lcom/igaworks/util/image/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/image/AsyncCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private occuredException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    return-void
.end method

.method private isExceptionOccured()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->occuredException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCanceled()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    invoke-interface {v0}, Lcom/igaworks/util/image/AsyncCallback;->cancelled()V

    .line 65
    :cond_0
    return-void
.end method

.method private notifyException()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    iget-object v1, p0, Lcom/igaworks/util/image/AsyncExecutor;->occuredException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/igaworks/util/image/AsyncCallback;->exceptionOccured(Ljava/lang/Exception;)V

    .line 74
    :cond_0
    return-void
.end method

.method private notifyResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    invoke-interface {v0, p1}, Lcom/igaworks/util/image/AsyncCallback;->onResult(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method private processAsyncExecutorAware(Lcom/igaworks/util/image/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    .local p1, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<TT;>;"
    instance-of v0, p1, Lcom/igaworks/util/image/AsyncExecutorAware;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/igaworks/util/image/AsyncExecutorAware;

    .end local p1    # "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<TT;>;"
    invoke-interface {p1, p0}, Lcom/igaworks/util/image/AsyncExecutorAware;->setAsyncExecutor(Lcom/igaworks/util/image/AsyncExecutor;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/igaworks/util/image/AsyncExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/image/AsyncExecutor;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/igaworks/util/image/AsyncExecutor;->occuredException:Ljava/lang/Exception;

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/image/AsyncExecutor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/igaworks/util/image/AsyncExecutor;->notifyCanceled()V

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/util/image/AsyncExecutor;->isExceptionOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/igaworks/util/image/AsyncExecutor;->notifyException()V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/AsyncExecutor;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallable(Ljava/util/concurrent/Callable;)Lcom/igaworks/util/image/AsyncExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/igaworks/util/image/AsyncExecutor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iput-object p1, p0, Lcom/igaworks/util/image/AsyncExecutor;->callable:Ljava/util/concurrent/Callable;

    .line 20
    return-object p0
.end method

.method public setCallback(Lcom/igaworks/util/image/AsyncCallback;)Lcom/igaworks/util/image/AsyncExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<TT;>;)",
            "Lcom/igaworks/util/image/AsyncExecutor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<TT;>;"
    .local p1, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<TT;>;"
    iput-object p1, p0, Lcom/igaworks/util/image/AsyncExecutor;->callback:Lcom/igaworks/util/image/AsyncCallback;

    .line 25
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/AsyncExecutor;->processAsyncExecutorAware(Lcom/igaworks/util/image/AsyncCallback;)V

    .line 26
    return-object p0
.end method
