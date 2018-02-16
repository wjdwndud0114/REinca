.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$18;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->popupAdList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    const-string v0, "plugin popupAdList()"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    new-instance v2, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;

    invoke-direct {v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 380
    return-void
.end method
