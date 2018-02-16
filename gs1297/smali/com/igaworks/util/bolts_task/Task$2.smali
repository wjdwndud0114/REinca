.class final Lcom/igaworks/util/bolts_task/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scheduled:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledFuture;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$2;->val$scheduled:Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$2;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$2;->val$scheduled:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 278
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$2;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->trySetCancelled()Z

    .line 279
    return-void
.end method
