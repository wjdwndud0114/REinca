.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->prepareVideoAd(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "logicName"    # Ljava/lang/String;
    .param p2, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;->logic:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;->handler:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 126
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;->logic:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;

    iget-object v3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$5;->handler:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/TnkSession;->prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    .line 127
    return-void
.end method
