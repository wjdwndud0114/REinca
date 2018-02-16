.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateRetry"
.end annotation


# instance fields
.field _delay:I

.field _state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V
    .locals 1
    .param p1, "state"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .param p2, "delay"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 465
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 466
    iput p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    .line 467
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 6

    .prologue
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads init: retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 473
    :try_start_0
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    return-object v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Init retry interrupted"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
