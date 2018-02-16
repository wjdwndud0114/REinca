.class abstract Lcom/soundcloud/android/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field private static final SCALE_RATE:F = 1.25f


# instance fields
.field protected baseMatrix:Landroid/graphics/Matrix;

.field protected final bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field protected handler:Landroid/os/Handler;

.field private final matrixValues:[F

.field maxZoom:F

.field private onLayoutRunnable:Ljava/lang/Runnable;

.field private recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

.field protected suppMatrix:Landroid/graphics/Matrix;

.field thisHeight:I

.field thisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 92
    return-void
.end method

.method private centerHorizontal(Landroid/graphics/RectF;FF)F
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "width"    # F
    .param p3, "deltaX"    # F

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 234
    .local v0, "viewWidth":I
    int-to-float v1, v0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 235
    int-to-float v1, v0

    sub-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float p3, v1, v2

    .line 241
    :cond_0
    :goto_0
    return p3

    .line 236
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 237
    iget v1, p1, Landroid/graphics/RectF;->left:F

    neg-float p3, v1

    goto :goto_0

    .line 238
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 239
    int-to-float v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float p3, v1, v2

    goto :goto_0
.end method

.method private centerVertical(Landroid/graphics/RectF;FF)F
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "height"    # F
    .param p3, "deltaY"    # F

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v0

    .line 222
    .local v0, "viewHeight":I
    int-to-float v1, v0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 223
    int-to-float v1, v0

    sub-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float p3, v1, v2

    .line 229
    :cond_0
    :goto_0
    return p3

    .line 224
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 225
    iget v1, p1, Landroid/graphics/RectF;->top:F

    neg-float p3, v1

    goto :goto_0

    .line 226
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p3, v1, v2

    goto :goto_0
.end method

.method private getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V
    .locals 10
    .param p1, "bitmap"    # Lcom/soundcloud/android/crop/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "includeRotation"    # Z

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 264
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 265
    .local v4, "viewWidth":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 267
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 268
    .local v5, "w":F
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 269
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 273
    .local v6, "widthScale":F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 274
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 276
    .local v2, "scale":F
    if-eqz p3, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 279
    :cond_0
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 280
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    .local v1, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/soundcloud/android/crop/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/soundcloud/android/crop/RotateBitmap;->setRotation(I)V

    .line 152
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateMaxZoom()F
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 301
    const/high16 v2, 0x3f800000    # 1.0f

    .line 306
    :goto_0
    return v2

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 305
    .local v1, "fw":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 306
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method protected center()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 199
    iget-object v7, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v7}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 205
    .local v4, "m":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v5, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 208
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 209
    .local v3, "height":F
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 211
    .local v6, "width":F
    const/4 v1, 0x0

    .local v1, "deltaX":F
    const/4 v2, 0x0

    .line 213
    .local v2, "deltaY":F
    invoke-direct {p0, v5, v3, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->centerVertical(Landroid/graphics/RectF;FF)F

    move-result v2

    .line 214
    invoke-direct {p0, v5, v6, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->centerHorizontal(Landroid/graphics/RectF;FF)F

    move-result v1

    .line 216
    invoke-virtual {p0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 217
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 159
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 288
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 289
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 294
    .local v0, "unrotated":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 295
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 296
    return-object v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 250
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(F)V

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 101
    sub-int v1, p4, p2

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 102
    sub-int v1, p5, p3

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 103
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 104
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 398
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 399
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 393
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 394
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 139
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 166
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Lcom/soundcloud/android/crop/RotateBitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 171
    .local v0, "viewWidth":I
    if-gtz v0, :cond_0

    .line 172
    new-instance v1, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 182
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 188
    :goto_1
    if-eqz p2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 192
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->calculateMaxZoom()F

    move-result v1

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V
    .locals 0
    .param p1, "recycler"    # Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    .line 96
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 349
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn(F)V

    .line 350
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 357
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 365
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 367
    .local v1, "cy":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 368
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 353
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut(F)V

    .line 354
    return-void
.end method

.method protected zoomOut(F)V
    .locals 6
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 372
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 390
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 377
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 380
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 381
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 383
    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 388
    :goto_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 389
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 343
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 344
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 345
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 346
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 310
    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 311
    iget p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 315
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 317
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 318
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 319
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center()V

    .line 320
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 325
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 326
    .local v6, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 328
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method
