.class public Lcom/tapjoy/internal/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fo;


# static fields
.field private static final a:Lcom/tapjoy/internal/ga;


# instance fields
.field private final b:Lcom/tapjoy/internal/fo;

.field private final c:Lcom/tapjoy/internal/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/tapjoy/internal/ga$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ga$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/ga;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/fo;

    .line 61
    iput-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/ga;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/fo;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/fo;

    .line 2038
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2039
    if-eqz v1, :cond_1

    .line 2048
    invoke-static {v1}, Lcom/tapjoy/internal/cs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/x;->a()Landroid/os/Handler;

    move-result-object v0

    .line 67
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    invoke-static {v0}, Lcom/tapjoy/internal/x;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/bf;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    aput-object v0, v1, v2

    .line 77
    :goto_1
    return-void

    .line 2049
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 2039
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/fr;->b()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 71
    sget-object v0, Lcom/tapjoy/internal/fr;->a:Lcom/tapjoy/internal/bf;

    iput-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    goto :goto_1

    .line 74
    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/x;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/x;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    goto :goto_1
.end method

.method static synthetic a(Lcom/tapjoy/internal/ga;)Lcom/tapjoy/internal/fo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/fo;

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/fo;)Lcom/tapjoy/internal/ga;
    .locals 1

    .prologue
    .line 48
    instance-of v0, p0, Lcom/tapjoy/internal/ga;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1071
    :goto_0
    if-nez v0, :cond_1

    .line 1072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    if-eqz p0, :cond_2

    .line 50
    new-instance v0, Lcom/tapjoy/internal/ga;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ga;-><init>(Lcom/tapjoy/internal/fo;)V

    .line 52
    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/ga;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/ga$2;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/ga$6;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/ga$7;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/ga$3;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$4;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/ga$4;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/bf;

    new-instance v1, Lcom/tapjoy/internal/ga$5;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/ga$5;-><init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
