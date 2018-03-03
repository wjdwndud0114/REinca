.class Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;
.super Ljava/lang/Object;
.source "IgawLiveOpsPopupEventManager.java"

# interfaces
.implements Lcom/igaworks/liveops/livepopup/LiveOpsPopupEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;->this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelPopupBtnClick()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "LiveOps"

    const-string v1, "IgawLiveOpsPopupEventManager >> onCancelPopupBtnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;->this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    move-result-object v0

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;->this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    move-result-object v0

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;->onCancelPopupBtnClick()V

    .line 37
    :cond_0
    return-void
.end method

.method public onPopupClick()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "LiveOps"

    const-string v1, "IgawLiveOpsPopupEventManager >> onPopupClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;->this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    move-result-object v0

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;->this$1:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    move-result-object v0

    # getter for: Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;
    invoke-static {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;->onPopupClick()V

    .line 30
    :cond_0
    return-void
.end method
