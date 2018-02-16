.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$15;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->isInterstitalAdVisible(Landroid/app/Activity;)Z

    move-result v0

    .line 286
    .local v0, "isVisible":Z
    if-eqz v0, :cond_1

    .line 287
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->removeCurrentInterstitialAd(Landroid/app/Activity;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->isMoreAppsVisible(Landroid/app/Activity;)Z

    move-result v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->removeCurrentMoreApps(Landroid/app/Activity;)V

    goto :goto_0

    .line 297
    :cond_2
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->isAdWebViewVisible(Landroid/app/Activity;)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_3

    .line 299
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->removeCurrentAdWebView(Landroid/app/Activity;)V

    goto :goto_0

    .line 303
    :cond_3
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->isAdListDetailVisible(Landroid/app/Activity;)Z

    move-result v0

    .line 304
    if-eqz v0, :cond_4

    .line 305
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->removeCurrentAdListDetail(Landroid/app/Activity;)V

    goto :goto_0

    .line 309
    :cond_4
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->isAdListVisible(Landroid/app/Activity;)Z

    move-result v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tnkfactory/ad/TnkSession;->removeCurrentAdList(Landroid/app/Activity;)V

    goto :goto_0
.end method
