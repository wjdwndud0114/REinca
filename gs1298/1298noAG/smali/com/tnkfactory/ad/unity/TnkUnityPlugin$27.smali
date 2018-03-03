.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->purchaseItem(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private cost:I

.field private handler:Ljava/lang/String;

.field private item:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->handler:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "pointCost"    # I
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 547
    iput p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->cost:I

    .line 548
    iput-object p2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->item:Ljava/lang/String;

    .line 549
    iput-object p3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->handler:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin purchaseItem() with handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 556
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->cost:I

    iget-object v2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->item:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27$1;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27$1;-><init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/TnkSession;->purchaseItem(Landroid/content/Context;ILjava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 568
    return-void
.end method
