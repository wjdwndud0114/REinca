.class Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;
.super Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;
.source "TnkUnityPlugin.java"

# interfaces
.implements Lcom/tnkfactory/ad/VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnityTnkVideoAdListener"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;-><init>(Ljava/lang/String;)V

    .line 791
    return-void
.end method


# virtual methods
.method public onVideoCompleted(Z)V
    .locals 3
    .param p1, "skipped"    # Z

    .prologue
    .line 795
    const-string v0, "plugin TnkVideoAdListener.onVideoCompleted() "

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;->handler:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkVideoAdListener;->handler:Ljava/lang/String;

    const-string v2, "onVideoCompletedBinding"

    if-eqz p1, :cond_1

    const-string v0, "Y"

    :goto_0
    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    return-void

    .line 798
    :cond_1
    const-string v0, "N"

    goto :goto_0
.end method
