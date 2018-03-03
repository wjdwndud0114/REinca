.class public interface abstract Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnobservedExceptionHandler"
.end annotation


# virtual methods
.method public abstract unobservedException(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/UnobservedTaskException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;",
            "Lcom/igaworks/util/bolts_task/UnobservedTaskException;",
            ")V"
        }
    .end annotation
.end method
