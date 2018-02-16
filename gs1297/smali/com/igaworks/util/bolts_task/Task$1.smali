.class final Lcom/igaworks/util/bolts_task/Task$1;
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
.field final synthetic val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$1;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$1;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method
