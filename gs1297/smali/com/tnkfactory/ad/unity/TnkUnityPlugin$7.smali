.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$7;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->showVideoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "__tnk_cpc__"

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/TnkSession;->showVideoAd(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 155
    return-void
.end method
