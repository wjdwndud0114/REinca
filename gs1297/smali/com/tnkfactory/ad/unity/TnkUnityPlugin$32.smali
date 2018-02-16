.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->popupMoreAppsWithButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private closeText:Ljava/lang/String;

.field private exitText:Ljava/lang/String;

.field private handler:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;
    .param p3, "exit"    # Ljava/lang/String;
    .param p4, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->title:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->closeText:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->exitText:Ljava/lang/String;

    .line 675
    iput-object p4, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->handler:Ljava/lang/String;

    .line 676
    return-object p0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 681
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->closeText:Ljava/lang/String;

    iget-object v3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->exitText:Ljava/lang/String;

    new-instance v4, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;

    iget-object v5, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$32;->handler:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/TnkSession;->popupMoreAppsWithButtons(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 683
    return-void
.end method
