.class public Lcom/igaworks/adbrix/util/SizeAwareImageView;
.super Landroid/widget/ImageView;
.source "SizeAwareImageView.java"


# instance fields
.field private actualHeight:I

.field private actualWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 39
    const/16 v8, 0x9

    new-array v3, v8, [F

    .line 40
    .local v3, "f":[F
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 43
    const/4 v8, 0x0

    aget v6, v3, v8

    .line 44
    .local v6, "scaleX":F
    const/4 v8, 0x4

    aget v7, v3, v8

    .line 47
    .local v7, "scaleY":F
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 49
    .local v5, "origW":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 52
    .local v4, "origH":I
    int-to-float v8, v5

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 53
    .local v1, "actW":I
    int-to-float v8, v4

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 55
    .local v0, "actH":I
    iput v1, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualWidth:I

    .line 56
    iput v0, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualHeight:I

    .line 59
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualHeight:I

    .line 32
    return-void
.end method

.method public setActualWidth(I)V
    .locals 0
    .param p1, "actualWidth"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/igaworks/adbrix/util/SizeAwareImageView;->actualWidth:I

    .line 24
    return-void
.end method
