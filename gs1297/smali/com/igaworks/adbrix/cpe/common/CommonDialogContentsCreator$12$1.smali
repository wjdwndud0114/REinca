.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 769
    :try_start_0
    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 770
    .local v5, "bitmap_new":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 771
    .local v9, "width":I
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 772
    .local v8, "height":I
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    .line 773
    .local v6, "desiredLength":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 774
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    mul-int v3, v9, v6

    div-int/2addr v3, v8

    const/4 v4, 0x1

    invoke-static {v2, v3, v6, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 775
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 776
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_0

    .line 779
    :cond_0
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v4, v4, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 780
    .local v1, "roundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;IIILandroid/graphics/Bitmap;)V

    .line 781
    .local v0, "roundedCornerRepeatSd":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v0    # "roundedCornerRepeatSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v1    # "roundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    .end local v5    # "bitmap_new":Landroid/graphics/Bitmap;
    .end local v6    # "desiredLength":I
    .end local v8    # "height":I
    .end local v9    # "width":I
    :goto_1
    return-void

    .line 782
    :catch_0
    move-exception v7

    .line 783
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
