.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$3;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->prepareVideoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "__tnk_cpc__"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/TnkSession;->prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    .line 93
    return-void
.end method
