.class public Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
.super Lcom/igaworks/util/bolts_task/TaskCompletionSource;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/util/bolts_task/TaskCompletionSource",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 1023
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>.TaskCompletionSource;"
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;->this$0:Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {p0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;-><init>()V

    .line 1024
    return-void
.end method
