.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateError"
.end annotation


# instance fields
.field _exception:Ljava/lang/Exception;

.field _state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 376
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    .line 378
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads init: halting init in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    .line 385
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init failed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;Lcom/unity3d/ads/IUnityAdsListener;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
