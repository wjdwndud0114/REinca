.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1578
    .local v0, "idx":I
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    if-eq v1, v2, :cond_0

    .line 1580
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setCurrentCampaign(I)V

    .line 1581
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->changePromotionContents()V

    .line 1584
    :cond_0
    return-void
.end method
