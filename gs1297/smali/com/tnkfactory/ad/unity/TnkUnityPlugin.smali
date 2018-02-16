.class public Lcom/tnkfactory/ad/unity/TnkUnityPlugin;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;,
        Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->resumeUnity()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->pauseUnity()V

    return-void
.end method

.method public static actionCompleted()V
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$22;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$22;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public static actionCompleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 447
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$23;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$23;-><init>()V

    .line 461
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$23;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public static applicationStarted()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$21;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$21;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public static buyCompleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "itemName"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$24;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$24;-><init>()V

    .line 479
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$24;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public static closeButtonAlignLeft()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    .line 61
    return-void
.end method

.method public static closeButtonAlignRight()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    .line 66
    return-void
.end method

.method public static enableCurrencyFormat(Z)V
    .locals 1
    .param p0, "useFormat"    # Z

    .prologue
    .line 55
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iput-boolean p0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    .line 56
    return-void
.end method

.method public static hasVideoAd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/tnkfactory/ad/TnkSession;->hasVideoAd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hideVideoCloseButton()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;->noClose:Z

    .line 85
    return-void
.end method

.method public static initInstance()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$1;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public static initInstance(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;-><init>()V

    .line 50
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static isAdViewVisible()Z
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->isInterstitalAdVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 322
    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->isAdListVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 323
    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->isAdListDetailVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 324
    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->isMoreAppsVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 325
    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->isAdWebViewVisible(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInterstitialAdVisible()Z
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->isAdViewVisible()Z

    move-result v0

    return v0
.end method

.method public static isInterstitialAdVisible(Ljava/lang/String;)Z
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin isInterstitialAdVisible() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 330
    if-eqz p0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->getCurrentInterstitialLogicName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$15;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private static pauseUnity()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public static popupAdList()V
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$18;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$18;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public static popupAdList(Ljava/lang/String;)V
    .locals 2
    .param p0, "headerTitle"    # Ljava/lang/String;

    .prologue
    .line 386
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$19;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$19;-><init>()V

    .line 400
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$19;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public static popupAdList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 404
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$20;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$20;-><init>()V

    .line 419
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$20;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public static popupMoreApps()V
    .locals 2

    .prologue
    .line 623
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$29;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$29;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    return-void
.end method

.method public static popupMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 632
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;-><init>()V

    .line 644
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method

.method public static popupMoreApps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 648
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$31;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$31;-><init>()V

    .line 662
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$31;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method public static popupMoreAppsWithButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "closeText"    # Ljava/lang/String;
    .param p2, "exitText"    # Ljava/lang/String;
    .param p3, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 666
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;-><init>()V

    .line 685
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 686
    return-void
.end method

.method public static prepareInterstitialAd(Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$11;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$11;-><init>()V

    .line 221
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$11;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public static prepareInterstitialAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;-><init>()V

    .line 242
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public static prepareInterstitialAdForCPC()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$10;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public static prepareInterstitialAdForPPI()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$9;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public static prepareVideoAd()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$3;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static prepareVideoAd(Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$4;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$4;-><init>()V

    .line 110
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$4;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public static prepareVideoAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;-><init>()V

    .line 128
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public static prepareVideoAdOnce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$6;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$6;-><init>()V

    .line 147
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$6;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public static purchaseItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pointCost"    # I
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 541
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;-><init>()V

    .line 570
    invoke-virtual {v1, p0, p1, p2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->init(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public static queryPoint(Ljava/lang/String;)V
    .locals 2
    .param p0, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 483
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;-><init>()V

    .line 507
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public static queryPublishState(Ljava/lang/String;)V
    .locals 2
    .param p0, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;-><init>()V

    .line 618
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 594
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method private static resumeUnity()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method private static sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "unityObjectName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramStr"    # Ljava/lang/String;

    .prologue
    .line 722
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendUnityMessage error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLeftButtonLabel(Ljava/lang/String;)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static setRightButtonLabel(Ljava/lang/String;)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static setUserAge(I)V
    .locals 2
    .param p0, "age"    # I

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin setUserAge() age = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/tnkfactory/ad/TnkSession;->setUserAge(Landroid/content/Context;I)V

    .line 581
    return-void
.end method

.method public static setUserGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin setUserGender() gender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 585
    if-nez p0, :cond_0

    .line 586
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/tnkfactory/ad/TnkCode;->MALE:Lcom/tnkfactory/ad/TnkCode;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/TnkSession;->setUserGender(Landroid/content/Context;Lcom/tnkfactory/ad/TnkCode;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/tnkfactory/ad/TnkCode;->FEMALE:Lcom/tnkfactory/ad/TnkCode;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/TnkSession;->setUserGender(Landroid/content/Context;Lcom/tnkfactory/ad/TnkCode;)V

    goto :goto_0
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 2
    .param p0, "userName"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin setUserName() name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/tnkfactory/ad/TnkSession;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public static showAdList()V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$16;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public static showAdList(Ljava/lang/String;)V
    .locals 2
    .param p0, "headerTitle"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$17;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$17;-><init>()V

    .line 370
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$17;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public static showInterstitialAd()V
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$14;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public static showInterstitialAd(Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 246
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$13;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$13;-><init>()V

    .line 260
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$13;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public static showVideoAd()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$7;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public static showVideoAd(Ljava/lang/String;)V
    .locals 2
    .param p0, "logicName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;-><init>()V

    .line 173
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public static showVideoCloseButton()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;->noClose:Z

    .line 81
    return-void
.end method

.method public static withdrawPoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 511
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;

    invoke-direct {v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;-><init>()V

    .line 537
    invoke-virtual {v1, p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method
