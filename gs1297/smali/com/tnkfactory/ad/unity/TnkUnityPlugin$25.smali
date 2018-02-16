.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->queryPoint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;->name:Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin queryPoint() with handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    new-instance v2, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25$1;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25$1;-><init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$25;)V

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->queryPoint(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 505
    return-void
.end method
