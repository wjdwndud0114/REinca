.class Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;
.super Ljava/lang/Object;
.source "IgawLiveOpsPopupEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;->setLiveOpsPopupEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;->this$0:Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;

    invoke-direct {v0, p0}, Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1$1;-><init>(Lcom/igaworks/unity/plugin/IgawLiveOpsPopupEventManager$1;)V

    invoke-static {v0}, Lcom/igaworks/liveops/IgawLiveOps;->setLiveOpsPopupEventListener(Lcom/igaworks/liveops/livepopup/LiveOpsPopupEventListener;)V

    .line 39
    return-void
.end method
