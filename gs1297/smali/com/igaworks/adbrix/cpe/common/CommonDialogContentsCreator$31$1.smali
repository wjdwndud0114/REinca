.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1672
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->val$thumbIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    iget-object v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    iget-object v5, v5, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v5, v5, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adbrix/util/DialogUtil;->getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    return-void

    .line 1673
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
