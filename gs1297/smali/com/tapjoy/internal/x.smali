.class public final Lcom/tapjoy/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public static declared-synchronized a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/tapjoy/internal/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/x;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/x;->a:Landroid/os/Handler;

    .line 27
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/x;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/os/Handler;)Lcom/tapjoy/internal/bf;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/tapjoy/internal/x$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/x$1;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
