.class public Lnet/supercat/GCMManager;
.super Ljava/lang/Object;
.source "GCMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/supercat/GCMManager$IStatusListener;
    }
.end annotation


# static fields
.field private static instance:Lnet/supercat/GCMManager;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/supercat/GCMManager$IStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lnet/supercat/GCMManager;

    invoke-direct {v0}, Lnet/supercat/GCMManager;-><init>()V

    sput-object v0, Lnet/supercat/GCMManager;->instance:Lnet/supercat/GCMManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/supercat/GCMManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/GCMManager;

    .prologue
    .line 10
    iget-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "reference"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method public static getInstance()Lnet/supercat/GCMManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lnet/supercat/GCMManager;->instance:Lnet/supercat/GCMManager;

    return-object v0
.end method

.method private notifyAllListeners(Z)V
    .locals 2
    .param p1, "registerd"    # Z

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnet/supercat/GCMManager$1;

    invoke-direct {v1, p0, p1}, Lnet/supercat/GCMManager$1;-><init>(Lnet/supercat/GCMManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public addListener(Lnet/supercat/GCMManager$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/supercat/GCMManager$IStatusListener;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    .line 27
    :cond_0
    iget-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 68
    const-string v1, "610498174886"

    const-string v2, "SENDER_ID"

    invoke-direct {p0, v1, v2}, Lnet/supercat/GCMManager;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 76
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "regId":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    .line 80
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "610498174886"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public removeListener(Lnet/supercat/GCMManager$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/supercat/GCMManager$IStatusListener;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
