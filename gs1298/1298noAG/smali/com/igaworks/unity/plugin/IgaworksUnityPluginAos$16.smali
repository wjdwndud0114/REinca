.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setClientRewardCallbackListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 519
    sget-boolean v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->isLogging:Z

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "setIgaworksRewardListener && isUnityPlatform : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16$1;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;)V

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/IgawAdpopcornExtension;->setClientRewardCallbackListener(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;)V

    .line 567
    return-void
.end method
