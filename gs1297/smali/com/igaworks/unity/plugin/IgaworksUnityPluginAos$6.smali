.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setDeferredLinkListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6$1;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;)V

    invoke-static {v0, v1}, Lcom/igaworks/IgawCommon;->setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V

    .line 169
    return-void
.end method
