.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->showVideoAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private logic:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "logicName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;->logic:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$8;->logic:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/TnkSession;->showVideoAd(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 171
    return-void
.end method
