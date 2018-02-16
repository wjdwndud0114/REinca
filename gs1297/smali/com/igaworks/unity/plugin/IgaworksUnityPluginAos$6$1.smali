.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/interfaces/DeferredLinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDeeplink(Ljava/lang/String;)V
    .locals 2
    .param p1, "deferredLink"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "DeferredLinkListenerForUnity call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "DeferredLinkListenerForUnity"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
