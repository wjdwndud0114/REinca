.class public final Lcom/tapjoy/internal/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/eo;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/tapjoy/internal/eo;

    invoke-direct {v0}, Lcom/tapjoy/internal/eo;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/eo;Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    return-object p1
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2089
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    sget-object v1, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo;

    .line 2078
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2081
    monitor-enter v1

    .line 2082
    :try_start_0
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 2083
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    iget-object v2, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2084
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2089
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p0, :cond_0

    .line 1028
    sget-object v1, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1052
    iget-object v2, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    if-nez v2, :cond_2

    .line 1093
    :try_start_0
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_4

    .line 1095
    check-cast v0, Landroid/app/Application;

    iput-object v0, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_1
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 1063
    :cond_2
    monitor-enter v1

    .line 1064
    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_3

    .line 1120
    new-instance v0, Lcom/tapjoy/internal/eo$2;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/eo$2;-><init>(Lcom/tapjoy/internal/eo;)V

    .line 1065
    iput-object v0, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1066
    iget-object v0, v1, Lcom/tapjoy/internal/eo;->b:Landroid/app/Application;

    iget-object v2, v1, Lcom/tapjoy/internal/eo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1069
    invoke-static {}, Lcom/tapjoy/internal/fn;->a()V

    .line 1073
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1098
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1100
    new-instance v2, Lcom/tapjoy/internal/eo$1;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/eo$1;-><init>(Lcom/tapjoy/internal/eo;Ljava/util/concurrent/CountDownLatch;)V

    .line 1113
    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1114
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    const-string v2, "Tapjoy.ActivityLifecycleTracker"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b()Landroid/app/Application;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2177
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 2178
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 20
    return-object v0
.end method
