.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/adbrix/interfaces/PromotionActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideDialog()V
    .locals 3

    .prologue
    .line 1261
    const-string v0, "Unity"

    const-string v1, "call onHideDialogListenerForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnHideDialogListenerForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public onNoADAvailable()V
    .locals 3

    .prologue
    .line 1255
    const-string v0, "Unity"

    const-string v1, "call onNoADAvailableListenerForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnNoADAvailableListenerForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public onOpenDialog()V
    .locals 3

    .prologue
    .line 1249
    const-string v0, "Unity"

    const-string v1, "call onOpenDialogListenerForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnOpenDialogListenerForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method public onPlayButtonClick()V
    .locals 3

    .prologue
    .line 1243
    const-string v0, "Unity"

    const-string v1, "call onPlayBtnClickListenerForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnPlayBtnClickListenerForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method
