.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V
    .locals 3
    .param p1, "apError"    # Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    .prologue
    .line 375
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "OnShowVideoAdFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnShowVideoAdFailureForUnity"

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public OnShowVideoAdSuccess()V
    .locals 3

    .prologue
    .line 382
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "OnShowVideoAdSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnShowVideoAdSuccessForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public OnVideoAdClose()V
    .locals 3

    .prologue
    .line 389
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "OnVideoAdClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnVideoAdCloseForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method
