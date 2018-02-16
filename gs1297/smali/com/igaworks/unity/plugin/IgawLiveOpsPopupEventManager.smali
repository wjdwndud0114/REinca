.class public Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
.super Ljava/lang/Object;
.source "IgawLiveOpsPopupEventManager.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->activity:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    .line 16
    invoke-direct {p0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->setLiveOpsPopupEventListener()V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->listener:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupUnityEventListener;

    return-object v0
.end method

.method private setLiveOpsPopupEventListener()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;-><init>(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
