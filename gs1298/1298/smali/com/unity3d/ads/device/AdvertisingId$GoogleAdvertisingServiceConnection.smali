.class Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleAdvertisingServiceConnection"
.end annotation


# instance fields
.field private final _binderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field _consumed:Z

.field final synthetic this$0:Lcom/unity3d/ads/device/AdvertisingId;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/device/AdvertisingId;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->this$0:Lcom/unity3d/ads/device/AdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 159
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/device/AdvertisingId;Lcom/unity3d/ads/device/AdvertisingId$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/device/AdvertisingId;
    .param p2, "x1"    # Lcom/unity3d/ads/device/AdvertisingId$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/device/AdvertisingId;)V

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
    .line 176
    iget-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 180
    iget-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "localInterruptedException":Ljava/lang/InterruptedException;
    const-string v1, "Couldn\'t put service to binder que"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    return-void
.end method
