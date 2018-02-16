.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->prepareInterstitialAd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private handler:Ljava/lang/String;

.field private logic:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "logicName"    # Ljava/lang/String;
    .param p2, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->logic:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->handler:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin prepareInterstitialAd() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->logic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->logic:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;

    iget-object v3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$12;->handler:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->prepareInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 240
    return-void
.end method
