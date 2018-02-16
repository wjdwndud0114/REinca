.class final Lcom/tapjoy/TapjoyConnectUnity$5;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Lcom/tapjoy/TJSetUserIDListener;


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
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetUserIDFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSetUserIDFailure,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "TapjoyUnity"

    const-string v2, "OnNativeSetUserIDCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public onSetUserIDSuccess()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "OnSetUserIDSuccess"

    .line 248
    const-string v1, "TapjoyUnity"

    const-string v2, "OnNativeSetUserIDCallback"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
