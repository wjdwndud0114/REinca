.class public final Lcom/tapjoy/internal/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:Lcom/tapjoy/internal/fz;

.field private static r:Lcom/tapjoy/internal/fz;

.field private static w:Landroid/os/Handler;

.field private static x:Ljava/io/File;


# instance fields
.field public final a:Lcom/tapjoy/internal/gh;

.field public b:Lcom/tapjoy/internal/gi;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lcom/tapjoy/internal/gc;

.field public g:Lcom/tapjoy/internal/fy;

.field public h:Lcom/tapjoy/internal/gm;

.field public i:Lcom/tapjoy/internal/fx;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Lcom/tapjoy/internal/ga;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/tapjoy/internal/fz;

    invoke-direct {v0}, Lcom/tapjoy/internal/fz;-><init>()V

    .line 59
    sput-object v0, Lcom/tapjoy/internal/fz;->q:Lcom/tapjoy/internal/fz;

    sput-object v0, Lcom/tapjoy/internal/fz;->r:Lcom/tapjoy/internal/fz;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/tapjoy/internal/fz;->c:Z

    .line 96
    iput-boolean v0, p0, Lcom/tapjoy/internal/fz;->s:Z

    .line 101
    iput-object v1, p0, Lcom/tapjoy/internal/fz;->d:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/tapjoy/internal/fz;->t:Z

    .line 117
    iput-boolean v0, p0, Lcom/tapjoy/internal/fz;->n:Z

    .line 897
    invoke-static {v1}, Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/fo;)Lcom/tapjoy/internal/ga;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fz;->p:Lcom/tapjoy/internal/ga;

    .line 120
    new-instance v0, Lcom/tapjoy/internal/gh;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gh;-><init>(Lcom/tapjoy/internal/fz;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/gh;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fz;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/tapjoy/internal/fz;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tapjoy/internal/fz;->r:Lcom/tapjoy/internal/fz;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;
    .locals 1

    .prologue
    .line 1062
    sget-object v0, Lcom/tapjoy/internal/fz;->r:Lcom/tapjoy/internal/fz;

    .line 67
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fz;->b(Landroid/content/Context;)V

    .line 68
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 931
    invoke-static {p1}, Lcom/tapjoy/internal/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_1

    .line 14062
    sget-object v1, Lcom/tapjoy/internal/fz;->r:Lcom/tapjoy/internal/fz;

    .line 934
    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/fz;->b(Landroid/content/Context;)V

    .line 935
    iget-object v2, v1, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fiverocks:force"

    const/4 v3, 0x0

    .line 936
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    :cond_0
    iget-object v2, v1, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    .line 14373
    monitor-enter v2

    .line 14374
    :try_start_0
    iget-object v3, v2, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v3, v3, Lcom/tapjoy/internal/gj;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 14375
    iget-object v3, v2, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v0, v3, Lcom/tapjoy/internal/ek$a;->d:Ljava/lang/String;

    .line 14376
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 939
    iget-object v1, v1, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 15083
    sget-object v2, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v3, "referrer"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v2

    .line 15084
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 943
    :cond_1
    return-object v0

    .line 14376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 336
    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    invoke-static {p0, v0}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/fr;->a(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 910
    const-class v1, Lcom/tapjoy/internal/fz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fz;->w:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/fz;->w:Landroid/os/Handler;

    .line 913
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fz;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    monitor-exit v1

    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 920
    const-class v1, Lcom/tapjoy/internal/fz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fz;->x:Ljava/io/File;

    if-nez v0, :cond_0

    .line 921
    const-string v0, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fz;->x:Ljava/io/File;

    .line 923
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fz;->x:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 927
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/fz;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/tapjoy/internal/ee;
    .locals 1

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->a()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ee;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tapjoy/internal/fz;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/fz;->b(Landroid/content/Context;)V

    .line 442
    iget-object v2, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    const-string v3, "The given context was null"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fw;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4115
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    const-string v2, "[0-9a-f]{24}"

    invoke-virtual {p5, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    .line 445
    :goto_2
    if-eqz v2, :cond_0

    .line 4125
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_6

    const-string v2, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    .line 448
    :goto_3
    if-eqz v2, :cond_0

    .line 451
    iput-object p2, p0, Lcom/tapjoy/internal/fz;->l:Ljava/lang/String;

    .line 452
    iput-object p3, p0, Lcom/tapjoy/internal/fz;->m:Ljava/lang/String;

    .line 453
    iput-object p5, p0, Lcom/tapjoy/internal/fz;->u:Ljava/lang/String;

    .line 454
    iput-object p6, p0, Lcom/tapjoy/internal/fz;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :try_start_3
    const-string v3, "TapjoySDK"

    .line 5109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    new-instance v4, Lcom/tapjoy/internal/cj;

    invoke-direct {v4, v3, v2}, Lcom/tapjoy/internal/cj;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 6104
    sput-object v4, Lcom/tapjoy/internal/cf;->b:Lcom/tapjoy/internal/ci;

    .line 468
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 7094
    sput-object v2, Lcom/tapjoy/internal/cf;->a:Ljava/util/concurrent/ExecutorService;

    .line 469
    iget-object v2, p0, Lcom/tapjoy/internal/fz;->i:Lcom/tapjoy/internal/fx;

    .line 7188
    iput-object v4, v2, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    .line 7189
    invoke-virtual {v2}, Lcom/tapjoy/internal/fx;->a()V

    .line 470
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    .line 472
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/internal/fz;->k:Z

    .line 7505
    new-instance v2, Lcom/tapjoy/internal/gd;

    iget-object v3, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/fz;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/gd;-><init>(Ljava/io/File;)V

    .line 8019
    invoke-virtual {v2}, Lcom/tapjoy/internal/gd;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 7506
    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7507
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 8078
    sget-object v1, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v1

    .line 8079
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    .line 8727
    invoke-static {p5}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8730
    iget-object v1, v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    .line 8732
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8733
    iget-object v1, v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, p5}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 8734
    iget-object v0, v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj;->a(Z)V

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/fz;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v1

    .line 442
    goto/16 :goto_1

    .line 4118
    :cond_5
    :try_start_4
    const-string v2, "Invalid App ID: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 4119
    goto/16 :goto_2

    .line 4128
    :cond_6
    const-string v2, "Invalid App Key: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p6, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 4129
    goto/16 :goto_3

    .line 460
    :catch_0
    move-exception v0

    .line 461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move v0, v1

    .line 8019
    goto :goto_4
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fz;->k:Z

    if-eqz v0, :cond_2

    .line 229
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fz;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object p1, p0, Lcom/tapjoy/internal/fz;->o:Ljava/lang/String;

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fz;->o:Ljava/lang/String;

    .line 233
    if-eqz p1, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ee;

    move-result-object v0

    .line 2243
    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/internal/ed;

    iget-object v4, v4, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/fz;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2245
    new-instance v1, Lcom/tapjoy/internal/hl;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/hl;-><init>(Lcom/tapjoy/internal/ee;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/fz$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fz$1;-><init>(Lcom/tapjoy/internal/fz;Ljava/lang/String;)V

    .line 3081
    sget-object v2, Lcom/tapjoy/internal/cf;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/cf;->a(Lcom/tapjoy/internal/ck;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_2
    if-eqz p1, :cond_1

    .line 237
    :try_start_1
    iput-object p1, p0, Lcom/tapjoy/internal/fz;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 13242
    sget-object v1, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    const-string v2, "impression"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v1

    .line 13243
    if-eqz p1, :cond_0

    .line 13244
    invoke-static {p1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->r:Ljava/lang/String;

    .line 13246
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 833
    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .locals 4

    .prologue
    .line 836
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 13250
    sget-object v1, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v1

    .line 13251
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->i:Ljava/lang/Long;

    .line 13252
    if-eqz p1, :cond_0

    .line 13253
    invoke-static {p1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->r:Ljava/lang/String;

    .line 13255
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 837
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 13259
    sget-object v1, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v1

    .line 13260
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 13261
    const-string v3, "region"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13262
    invoke-static {v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/dy$a;->r:Ljava/lang/String;

    .line 13263
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 841
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 399
    const-string v0, "setUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fz;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    :goto_0
    return-void

    .line 402
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 404
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_1

    .line 408
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    :cond_2
    move-object p1, v1

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    .line 3638
    monitor-enter v1

    .line 3639
    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3640
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/dn;

    new-instance v2, Lcom/tapjoy/internal/ej;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/ej;-><init>(Ljava/util/List;)V

    .line 3641
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dn;->b(Ljava/lang/Object;)[B

    move-result-object v0

    .line 3642
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3643
    iget-object v2, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 3644
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3645
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3650
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3647
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    .line 3648
    iget-object v0, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fz;->k:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/gb;->b(Landroid/content/Context;)Lcom/tapjoy/internal/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gb;->e(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fz;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    .line 162
    invoke-static {}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/ez;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/ez;->a(Landroid/content/Context;)V

    .line 164
    invoke-static {v0}, Lcom/tapjoy/internal/gc;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gc;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    .line 1948
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/internal/fz;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "events2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/tapjoy/internal/fz;->i:Lcom/tapjoy/internal/fx;

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Lcom/tapjoy/internal/fx;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/fx;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tapjoy/internal/fz;->i:Lcom/tapjoy/internal/fx;

    .line 171
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/fy;

    iget-object v2, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    iget-object v3, p0, Lcom/tapjoy/internal/fz;->i:Lcom/tapjoy/internal/fx;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/fy;-><init>(Lcom/tapjoy/internal/gc;Lcom/tapjoy/internal/fx;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 172
    new-instance v1, Lcom/tapjoy/internal/gm;

    iget-object v2, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/gm;-><init>(Lcom/tapjoy/internal/fy;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fz;->h:Lcom/tapjoy/internal/gm;

    .line 173
    new-instance v1, Lcom/tapjoy/internal/gi;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gi;

    .line 175
    new-instance v1, Lcom/tapjoy/internal/fh;

    new-instance v2, Ljava/io/File;

    .line 176
    invoke-static {v0}, Lcom/tapjoy/internal/fz;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "usages"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/fh;-><init>(Ljava/io/File;Lcom/tapjoy/internal/fy;)V

    .line 175
    invoke-static {v1}, Lcom/tapjoy/internal/ff;->a(Lcom/tapjoy/internal/fh;)V

    .line 178
    sget-object v1, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    .line 2065
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/gt;->b:Landroid/content/Context;

    .line 2066
    const-string v2, "tapjoyCacheDataMMF2E"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    .line 2067
    const-string v2, "tapjoyCacheDataMMF2U"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    .line 2068
    invoke-virtual {v1}, Lcom/tapjoy/internal/gt;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/tapjoy/internal/fz;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fz;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 9166
    :cond_1
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_2

    .line 9167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    .line 491
    :cond_2
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 392
    const-string v0, "getUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fz;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 395
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->e()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 10154
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 10155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    .line 499
    :cond_0
    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->h:Lcom/tapjoy/internal/gm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fz;->h:Lcom/tapjoy/internal/gm;

    .line 11038
    iget-object v0, v0, Lcom/tapjoy/internal/gm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 549
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 562
    iget-object v2, p0, Lcom/tapjoy/internal/fz;->h:Lcom/tapjoy/internal/gm;

    .line 11092
    iget-object v3, v2, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    .line 11093
    iget-object v3, v2, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11094
    iput-object v4, v2, Lcom/tapjoy/internal/gm;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 11046
    :cond_0
    iget-object v3, v2, Lcom/tapjoy/internal/gm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11047
    const-string v3, "New session started"

    invoke-static {v3}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;)V

    .line 11048
    iget-object v2, v2, Lcom/tapjoy/internal/gm;->a:Lcom/tapjoy/internal/fy;

    .line 12088
    iget-object v3, v2, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gc;->d()Lcom/tapjoy/internal/ef;

    move-result-object v3

    .line 12089
    iget-object v4, v2, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    .line 12432
    monitor-enter v4

    .line 12433
    :try_start_0
    iget-object v5, v4, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v5, v5, Lcom/tapjoy/internal/gj;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v5}, Lcom/tapjoy/internal/m;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 12434
    iget-object v6, v4, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v6, v6, Lcom/tapjoy/internal/gj;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/m;->a(I)V

    .line 12435
    iget-object v6, v4, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lcom/tapjoy/internal/ek$a;->h:Ljava/lang/Integer;

    .line 12436
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12090
    sget-object v4, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v5, "bootup"

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v4

    .line 12091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tapjoy/internal/fy;->c:J

    .line 12092
    if-eqz v3, :cond_1

    .line 12093
    iput-object v3, v4, Lcom/tapjoy/internal/dy$a;->s:Lcom/tapjoy/internal/ef;

    .line 12095
    :cond_1
    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 11050
    sget-object v2, Lcom/tapjoy/internal/et;->c:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/et$a;->notifyObservers()V

    move v2, v0

    .line 562
    :goto_0
    if-eqz v2, :cond_3

    .line 563
    iget-object v1, p0, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/gh;

    .line 13052
    monitor-enter v1

    .line 13053
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, v1, Lcom/tapjoy/internal/gh;->b:Ljava/util/Set;

    .line 13054
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 564
    sget-object v1, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gt;->a()V

    .line 567
    :goto_1
    return v0

    .line 12436
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    .line 11053
    goto :goto_0

    .line 13054
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move v0, v1

    .line 567
    goto :goto_1
.end method
