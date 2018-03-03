.class final Lcom/tapjoy/internal/ep$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Thread;

.field private final c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/ep$a;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/tapjoy/internal/ep$a;->b:Ljava/lang/Thread;

    .line 48
    iput-object p3, p0, Lcom/tapjoy/internal/ep$a;->c:Landroid/os/Looper;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ep$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/ep$a;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/tapjoy/internal/ep$a;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/tapjoy/internal/ep$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method not return void: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    new-instance v1, Lcom/tapjoy/internal/ep$a$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/tapjoy/internal/ep$a$1;-><init>(Lcom/tapjoy/internal/ep$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/tapjoy/internal/ep$a;->c:Landroid/os/Looper;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/tapjoy/internal/ep$a;->c:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/tapjoy/internal/ep$a;->b:Ljava/lang/Thread;

    invoke-static {}, Lcom/tapjoy/internal/fr;->b()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/tapjoy/internal/fr;->a:Lcom/tapjoy/internal/bf;

    .line 79
    invoke-interface {v2, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/ep$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
