.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/liveops/pushservice/RegistrationIdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveRegistrationId(Ljava/lang/String;)V
    .locals 2
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 1779
    const-string v0, "Unity"

    const-string v1, "call onReceiveRegistrationIdForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "onReceiveRegistrationIdForUnity"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    return-void
.end method
