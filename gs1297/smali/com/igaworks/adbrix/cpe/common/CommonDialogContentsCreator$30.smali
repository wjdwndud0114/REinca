.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "CommonDialogContentsCreator.java"


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

.field final synthetic val$thumbIv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iput-object p6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->val$thumbIv:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->val$thumbIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v3, v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    invoke-static {v1, p1, v2, v3}, Lcom/igaworks/adbrix/util/DialogUtil;->getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1656
    return-void
.end method
