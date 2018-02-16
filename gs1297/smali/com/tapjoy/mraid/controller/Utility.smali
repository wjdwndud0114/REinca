.class public Lcom/tapjoy/mraid/controller/Utility;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private c:Lcom/tapjoy/mraid/controller/Assets;

.field private d:Lcom/tapjoy/mraid/controller/Display;

.field private e:Lcom/tapjoy/mraid/controller/MraidLocation;

.field private f:Lcom/tapjoy/mraid/controller/Network;

.field private g:Lcom/tapjoy/mraid/controller/MraidSensor;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 2
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/tapjoy/mraid/controller/Assets;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Assets;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->c:Lcom/tapjoy/mraid/controller/Assets;

    .line 40
    new-instance v0, Lcom/tapjoy/mraid/controller/Display;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Display;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    .line 41
    new-instance v0, Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/mraid/controller/MraidLocation;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    .line 42
    new-instance v0, Lcom/tapjoy/mraid/controller/Network;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Network;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    .line 43
    new-instance v0, Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/mraid/controller/MraidSensor;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    .line 46
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->c:Lcom/tapjoy/mraid/controller/Assets;

    const-string v1, "MRAIDAssetsControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    const-string v1, "MRAIDDisplayControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    const-string v1, "MRAIDLocationControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    const-string v1, "MRAIDNetworkControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    const-string v1, "MRAIDSensorControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 143
    const-string v0, "MRAID Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Network;->startNetworkListener()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->allowLocationServices()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->startLocationListener()V

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->startShakeListener()V

    goto :goto_0

    .line 150
    :cond_3
    const-string v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->startTiltListener()V

    goto :goto_0

    .line 152
    :cond_4
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->startHeadingListener()V

    goto :goto_0

    .line 154
    :cond_5
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->startConfigurationListener()V

    goto :goto_0
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->c:Lcom/tapjoy/mraid/controller/Assets;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Assets;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deactivate(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    const-string v0, "MRAID Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deactivate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Network;->stopNetworkListener()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->stopAllListeners()V

    goto :goto_0

    .line 171
    :cond_2
    const-string v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->stopShakeListener()V

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->stopTiltListener()V

    goto :goto_0

    .line 175
    :cond_4
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->stopHeadingListener()V

    goto :goto_0

    .line 177
    :cond_5
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->stopConfigurationListener()V

    goto :goto_0
.end method

.method public deleteOldAds()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->c:Lcom/tapjoy/mraid/controller/Assets;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Assets;->deleteOldAds()V

    .line 189
    return-void
.end method

.method public fireReadyEvent()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "mraid.signalReady();"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public fireViewableChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireChangeEvent({viewable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public init(F)V
    .locals 6
    .param p1, "density"    # F

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ state: \'default\', network: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    .line 62
    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Network;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Display;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placement: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 63
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', maxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    .line 64
    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Display;->getMaxSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expandProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Display;->getMaxSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    .line 65
    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Display;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultPosition: { x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 66
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 67
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 68
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }, orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    .line 69
    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Display;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1083
    const-string v0, "supports: [ \'level-1\', \'level-2\', \'screen\', \'orientation\', \'network\'"

    .line 1085
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/MraidLocation;->allowLocationServices()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->b:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1086
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->b:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 1087
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v2

    .line 1088
    :goto_0
    if-eqz v1, :cond_1

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'location\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'video\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'audio\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'map\' ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    const-string v1, "MRAID Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSupports: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",viewable:true });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "MRAID Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init: injection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Utility;->fireReadyEvent()V

    .line 74
    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/controller/Utility;->fireViewableChange(Z)V

    .line 75
    return-void

    .line 1087
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public setMaxSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Display;->setMaxSize(II)V

    .line 134
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 206
    const-string v0, "MRAID Utility"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->c:Lcom/tapjoy/mraid/controller/Assets;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Assets;->stopAllListeners()V

    .line 196
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->d:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->stopAllListeners()V

    .line 197
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->e:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->stopAllListeners()V

    .line 198
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->f:Lcom/tapjoy/mraid/controller/Network;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Network;->stopAllListeners()V

    .line 199
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility;->g:Lcom/tapjoy/mraid/controller/MraidSensor;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidSensor;->stopAllListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
