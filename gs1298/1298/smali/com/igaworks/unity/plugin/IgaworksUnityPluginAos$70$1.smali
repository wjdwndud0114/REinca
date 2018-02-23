.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/liveops/livepopup/LiveOpsDeepLinkEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDeeplinkData(Ljava/lang/String;)V
    .locals 2
    .param p1, "deeplink"    # Ljava/lang/String;

    .prologue
    .line 1760
    const-string v0, "Unity"

    const-string v1, "call onReceivePopupDeeplinkDataForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "onReceivePopupDeeplinkDataForUnity"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "deeplink":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    return-void
.end method
