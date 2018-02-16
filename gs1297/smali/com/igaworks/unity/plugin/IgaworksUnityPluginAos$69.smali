.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->requestPopupResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1729
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69$1;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69;)V

    invoke-static {v0, v1}, Lcom/igaworks/liveops/IgawLiveOps;->requestPopupResource(Landroid/content/Context;Lcom/igaworks/liveops/livepopup/LiveOpsPopupResourceEventListener;)V

    .line 1739
    return-void
.end method
