.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->withdrawPoints(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private descStr:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "descStr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->descStr:Ljava/lang/String;

    .line 517
    iput-object p2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->name:Ljava/lang/String;

    .line 518
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin withdrawPoints() with handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->descStr:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26$1;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26$1;-><init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/TnkSession;->withdrawPoints(Landroid/content/Context;Ljava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 535
    return-void
.end method
