.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;
.source "InitializeThread.java"

# interfaces
.implements Lcom/unity3d/ads/connectivity/IConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateNetworkError"
.end annotation


# static fields
.field protected static final CONNECTED_EVENT_THRESHOLD_MS:I = 0x2710

.field protected static final MAX_CONNECTED_EVENTS:I = 0x1f4

.field private static _lastConnectedEventTimeMs:J

.field private static _receivedConnectedEvents:I


# instance fields
.field private _conditionVariable:Landroid/os/ConditionVariable;

.field private _erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x0

    sput v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    .line 402
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "erroredState"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .prologue
    .line 408
    const-string v0, "network error"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 409
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 410
    return-void
.end method

.method private shouldHandleConnectedEvent()Z
    .locals 4

    .prologue
    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 414
    const-string v0, "Unity Ads init: network error, waiting for connection events"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 416
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    .line 417
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->addListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 419
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 421
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 425
    :goto_0
    return-object v0

    .line 424
    :cond_0
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 425
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v1, "network error"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No connected events within the timeout!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onConnected()V
    .locals 2

    .prologue
    .line 431
    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    .line 433
    const-string v0, "Unity Ads init got connected event"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->shouldHandleConnectedEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 438
    :cond_0
    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    .line 439
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 442
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    .line 443
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 447
    const-string v0, "Unity Ads init got disconnected event"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 448
    return-void
.end method
