.class final Lcom/tapjoy/internal/de$a;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/tapjoy/internal/de$a;->getState()I

    move-result v0

    .line 286
    packed-switch v0, :pswitch_data_0

    .line 298
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/internal/de$a;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/tapjoy/internal/de$a;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/de$a;->a:Ljava/lang/Object;

    return-object v0

    .line 295
    :pswitch_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/tapjoy/internal/de$a;->compareAndSetState(II)Z

    move-result v0

    .line 352
    if-eqz v0, :cond_1

    .line 355
    iput-object p1, p0, Lcom/tapjoy/internal/de$a;->a:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lcom/tapjoy/internal/de$a;->b:Ljava/lang/Throwable;

    .line 357
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/de$a;->releaseShared(I)Z

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/de$a;->getState()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 361
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/de$a;->acquireShared(I)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/tapjoy/internal/de$a;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/tapjoy/internal/de$a;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final tryAcquireShared(I)I
    .locals 1
    .param p1, "ignored"    # I

    .prologue
    .line 233
    .local p0, "this":Lcom/tapjoy/internal/de$a;, "Lcom/tapjoy/internal/de$a<TV;>;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/de$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 1
    .param p1, "finalState"    # I

    .prologue
    .line 245
    .local p0, "this":Lcom/tapjoy/internal/de$a;, "Lcom/tapjoy/internal/de$a<TV;>;"
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/de$a;->setState(I)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method
