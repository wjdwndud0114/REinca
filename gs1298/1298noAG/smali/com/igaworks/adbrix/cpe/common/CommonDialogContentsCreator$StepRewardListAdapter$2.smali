.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

.field final synthetic val$_checkUrl:Ljava/lang/String;

.field final synthetic val$checkIv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;->val$_checkUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;->val$checkIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;->val$_checkUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1470
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->access$100(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1471
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2$1;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    return-void
.end method
