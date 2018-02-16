.class public final Lcom/tapjoy/internal/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ep$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/tapjoy/internal/ep$a;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/tapjoy/internal/ep$a;-><init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 22
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
