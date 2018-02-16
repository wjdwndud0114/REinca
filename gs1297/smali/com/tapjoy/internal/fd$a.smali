.class final Lcom/tapjoy/internal/fd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final b:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fd$a;->a:Z

    .line 120
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fd$a;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/fd$a;
    .locals 3

    .prologue
    .line 106
    const-string v0, "com.google.android.gms"

    .line 1081
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ae;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .line 106
    const v1, 0x3d0900

    if-ge v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play services not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/fd$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$a;-><init>()V

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    return-object v0

    .line 116
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fd$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 132
    return-void
.end method
