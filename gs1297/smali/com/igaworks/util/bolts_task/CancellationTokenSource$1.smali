.class Lcom/igaworks/util/bolts_task/CancellationTokenSource$1;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CancellationTokenSource;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CancellationTokenSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CancellationTokenSource;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CancellationTokenSource$1;->this$0:Lcom/igaworks/util/bolts_task/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CancellationTokenSource$1;->this$0:Lcom/igaworks/util/bolts_task/CancellationTokenSource;

    # getter for: Lcom/igaworks/util/bolts_task/CancellationTokenSource;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CancellationTokenSource;->access$000(Lcom/igaworks/util/bolts_task/CancellationTokenSource;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CancellationTokenSource$1;->this$0:Lcom/igaworks/util/bolts_task/CancellationTokenSource;

    const/4 v2, 0x0

    # setter for: Lcom/igaworks/util/bolts_task/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v2}, Lcom/igaworks/util/bolts_task/CancellationTokenSource;->access$102(Lcom/igaworks/util/bolts_task/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CancellationTokenSource$1;->this$0:Lcom/igaworks/util/bolts_task/CancellationTokenSource;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CancellationTokenSource;->cancel()V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
