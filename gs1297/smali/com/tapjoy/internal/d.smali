.class public final Lcom/tapjoy/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Application;

.field private static b:I

.field private static final c:Lcom/tapjoy/internal/cd;

.field private static final d:Ljava/util/Set;

.field private static final e:Lcom/tapjoy/internal/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tapjoy/internal/cd;

    invoke-direct {v0}, Lcom/tapjoy/internal/cd;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/d;->c:Lcom/tapjoy/internal/cd;

    .line 26
    new-instance v0, Lcom/tapjoy/internal/bd;

    invoke-direct {v0}, Lcom/tapjoy/internal/bd;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/d;->d:Ljava/util/Set;

    .line 28
    new-instance v0, Lcom/tapjoy/internal/cd;

    invoke-direct {v0}, Lcom/tapjoy/internal/cd;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/d;->e:Lcom/tapjoy/internal/cd;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1098
    sget-object v0, Lcom/tapjoy/internal/d;->e:Lcom/tapjoy/internal/cd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/tapjoy/internal/d;->c()Landroid/app/Activity;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/tapjoy/internal/d;->c:Lcom/tapjoy/internal/cd;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/cd;->a(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 122
    const-class v1, Lcom/tapjoy/internal/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/d;->a:Landroid/app/Application;

    if-eq v0, p0, :cond_0

    .line 123
    sput-object p0, Lcom/tapjoy/internal/d;->a:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit v1

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/tapjoy/internal/d;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/internal/d;->b:I

    .line 132
    sget-object v0, Lcom/tapjoy/internal/d;->c:Lcom/tapjoy/internal/cd;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/cd;->a(Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/tapjoy/internal/d;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/tapjoy/internal/d;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/tapjoy/internal/d;->c:Lcom/tapjoy/internal/cd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 82
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/d;->d:Ljava/util/Set;

    .line 1781
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cw;->a(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 141
    sget v0, Lcom/tapjoy/internal/d;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/internal/d;->b:I

    .line 142
    sget-object v0, Lcom/tapjoy/internal/d;->c:Lcom/tapjoy/internal/cd;

    .line 2032
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/ref/WeakReference;

    .line 143
    sget-object v0, Lcom/tapjoy/internal/d;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 145
    sget v0, Lcom/tapjoy/internal/d;->b:I

    if-gez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/internal/d;->b:I

    .line 148
    :cond_0
    return-void
.end method
