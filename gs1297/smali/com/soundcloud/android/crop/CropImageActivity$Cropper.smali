.class Lcom/soundcloud/android/crop/CropImageActivity$Cropper;
.super Ljava/lang/Object;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/CropImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cropper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method private constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/CropImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;
    .param p2, "x1"    # Lcom/soundcloud/android/crop/CropImageActivity$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    return-void
.end method

.method static synthetic access$700(Lcom/soundcloud/android/crop/CropImageActivity$Cropper;)V
    .locals 0
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->makeDefault()V

    return-void
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 220
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;

    move-result-object v10

    if-nez v10, :cond_0

    .line 249
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v4, Lcom/soundcloud/android/crop/HighlightView;

    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/soundcloud/android/crop/HighlightView;-><init>(Landroid/view/View;)V

    .line 225
    .local v4, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v6

    .line 226
    .local v6, "width":I
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v3

    .line 228
    .local v3, "height":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    .local v5, "imageRect":Landroid/graphics/Rect;
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    div-int/lit8 v2, v10, 0x5

    .line 233
    .local v2, "cropWidth":I
    move v0, v2

    .line 235
    .local v0, "cropHeight":I
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 236
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v10

    iget-object v11, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I
    invoke-static {v11}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v11

    if-le v10, v11, :cond_3

    .line 237
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v10

    mul-int/2addr v10, v2

    iget-object v11, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I
    invoke-static {v11}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v11

    div-int v0, v10, v11

    .line 243
    :cond_1
    :goto_1
    sub-int v10, v6, v2

    div-int/lit8 v7, v10, 0x2

    .line 244
    .local v7, "x":I
    sub-int v10, v3, v0

    div-int/lit8 v8, v10, 0x2

    .line 246
    .local v8, "y":I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v10, v7

    int-to-float v11, v8

    add-int v12, v7, v2

    int-to-float v12, v12

    add-int v13, v8, v0

    int-to-float v13, v13

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    .local v1, "cropRect":Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    iget-object v11, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I
    invoke-static {v11}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I
    invoke-static {v11}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-virtual {v4, v10, v5, v1, v9}, Lcom/soundcloud/android/crop/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 248
    iget-object v9, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;
    invoke-static {v9}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/soundcloud/android/crop/CropImageView;->add(Lcom/soundcloud/android/crop/HighlightView;)V

    goto/16 :goto_0

    .line 239
    .end local v1    # "cropRect":Landroid/graphics/RectF;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_3
    iget-object v10, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I
    invoke-static {v10}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v10

    mul-int/2addr v10, v0

    iget-object v11, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I
    invoke-static {v11}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v11

    div-int v2, v10, v11

    goto :goto_1
.end method


# virtual methods
.method public crop()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity$Cropper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
