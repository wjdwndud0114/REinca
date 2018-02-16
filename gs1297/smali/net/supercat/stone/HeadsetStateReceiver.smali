.class public Lnet/supercat/stone/HeadsetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetStateReceiver.java"


# instance fields
.field private headsetConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-boolean v0, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iput-boolean v1, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    .line 22
    const-string v0, "[PlatformManager]"

    const-string v1, "HandleHeadsetConnected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    if-nez v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 24
    iput-boolean v2, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    .line 25
    const-string v0, "[PlatformManager]"

    const-string v1, "HandleHeadsetConnected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnet/supercat/stone/HeadsetStateReceiver;->headsetConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
