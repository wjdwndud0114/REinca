.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->showPopUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$spaceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;->val$spaceKey:Ljava/lang/String;

    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1755
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;->val$spaceKey:Ljava/lang/String;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70$1;

    invoke-direct {v2, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;)V

    invoke-static {v0, v1, v2}, Lcom/igaworks/liveops/IgawLiveOps;->showPopUp(Landroid/app/Activity;Ljava/lang/String;Lcom/igaworks/liveops/livepopup/LiveOpsDeepLinkEventListener;)V

    .line 1764
    return-void
.end method
