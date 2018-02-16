.class final Lcom/tapjoy/TapjoyConnectUnity$2;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Lcom/tapjoy/TJVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectUnity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "OnVideoComplete"

    .line 98
    const-string v1, "TapjoyUnity"

    const-string v2, "OnNativeVideoCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onVideoError(I)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnVideoError,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "TapjoyUnity"

    const-string v2, "OnNativeVideoCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onVideoStart()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "OnVideoStart"

    .line 88
    const-string v1, "TapjoyUnity"

    const-string v2, "OnNativeVideoCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
