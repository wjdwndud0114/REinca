.class Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Lcom/tnkfactory/ad/TnkAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnityTnkAdListener"
.end annotation


# instance fields
.field protected handler:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    .line 736
    iput-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    .line 740
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    .line 741
    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 745
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "typeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin TnkAdListener.onClose() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 748
    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->resumeUnity()V
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$500()V

    .line 750
    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    const-string v2, "onCloseBinding"

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    .line 757
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "errCodeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin TnkAdListener.onFailure() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 760
    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->resumeUnity()V
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$500()V

    .line 762
    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    const-string v2, "onFailureBinding"

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 3

    .prologue
    .line 769
    const-string v0, "plugin TnkAdListener.onLoad() "

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    const-string v1, "onLoadBinding"

    const-string v2, ""

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 778
    const-string v0, "plugin TnkAdListener.onShow() "

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;->handler:Ljava/lang/String;

    const-string v1, "onShowBinding"

    const-string v2, ""

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->pauseUnity()V
    invoke-static {}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$600()V

    .line 785
    return-void
.end method
