.class final Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/core/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field retrieved:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->retrieved:Z

    .line 246
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/core/AdvertisingIdClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/igaworks/core/AdvertisingIdClient$1;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->retrieved:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->retrieved:Z

    .line 258
    iget-object v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 253
    return-void
.end method
