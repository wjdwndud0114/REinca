.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 690
    :try_start_0
    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 691
    .local v5, "bitmap_new":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 692
    .local v9, "width":I
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 693
    .local v8, "height":I
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    .line 694
    .local v6, "desiredLength":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 695
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    mul-int v2, v9, v6

    div-int/2addr v2, v8

    const/4 v3, 0x1

    invoke-static {v1, v2, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 696
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 697
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_0

    .line 700
    :cond_0
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;IIILandroid/graphics/Bitmap;)V

    .line 701
    .local v0, "roundedCornerRepeatSd":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v0    # "roundedCornerRepeatSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v5    # "bitmap_new":Landroid/graphics/Bitmap;
    .end local v6    # "desiredLength":I
    .end local v8    # "height":I
    .end local v9    # "width":I
    :goto_1
    return-void

    .line 702
    :catch_0
    move-exception v7

    .line 703
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
