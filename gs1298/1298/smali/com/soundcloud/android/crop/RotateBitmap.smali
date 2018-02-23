.class Lcom/soundcloud/android/crop/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private rotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    .line 33
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 53
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 59
    .local v0, "cx":I
    iget-object v3, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 60
    .local v1, "cy":I
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 61
    iget v3, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 62
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 64
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_0
    return-object v2
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isOrientationChanged()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 94
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/soundcloud/android/crop/RotateBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/soundcloud/android/crop/RotateBitmap;->rotation:I

    .line 37
    return-void
.end method
