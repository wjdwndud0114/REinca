.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setCampaignThumbnailListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

.field final synthetic val$_item:I

.field final synthetic val$thumbIv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;ILandroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iput p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->val$_item:I

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->val$thumbIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1665
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->val$_item:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getIcon()Lcom/igaworks/adbrix/model/IconModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/IconModel;->getResource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1666
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1667
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1681
    return-void
.end method
