.class public Lcom/soundcloud/android/crop/CropImageView;
.super Lcom/soundcloud/android/crop/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field context:Landroid/content/Context;

.field highlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field private lastX:F

.field private lastY:F

.field private motionEdge:I

.field motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

.field private validPointerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/soundcloud/android/crop/HighlightView;)V
    .locals 14
    .param p1, "hv"    # Lcom/soundcloud/android/crop/HighlightView;

    .prologue
    .line 159
    iget-object v1, p1, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 161
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 162
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 164
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 165
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 167
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3f19999a    # 0.6f

    mul-float v6, v9, v10

    .line 168
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3f19999a    # 0.6f

    mul-float v7, v9, v10

    .line 170
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 171
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 172
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 174
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 175
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 176
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 177
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000    # 300.0f

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/soundcloud/android/crop/CropImageView;->zoomTo(FFFF)V

    .line 180
    .end local v0    # "coordinates":[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageView;->ensureVisible(Lcom/soundcloud/android/crop/HighlightView;)V

    .line 181
    return-void
.end method

.method private ensureVisible(Lcom/soundcloud/android/crop/HighlightView;)V
    .locals 10
    .param p1, "hv"    # Lcom/soundcloud/android/crop/HighlightView;

    .prologue
    const/4 v9, 0x0

    .line 140
    iget-object v6, p1, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 142
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    .local v1, "panDeltaX1":I
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 145
    .local v2, "panDeltaX2":I
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 146
    .local v4, "panDeltaY1":I
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 148
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_2

    move v0, v1

    .line 149
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 151
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/soundcloud/android/crop/CropImageView;->panBy(FF)V

    .line 154
    :cond_1
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_2
    move v0, v2

    .line 148
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_3
    move v3, v5

    .line 149
    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/soundcloud/android/crop/HighlightView;)V
    .locals 1
    .param p1, "hv"    # Lcom/soundcloud/android/crop/HighlightView;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 194
    return-void
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->clear()V

    return-void
.end method

.method public bridge synthetic getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 186
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 187
    .local v0, "highlightView":Lcom/soundcloud/android/crop/HighlightView;
    invoke-virtual {v0, p1}, Lcom/soundcloud/android/crop/HighlightView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 189
    .end local v0    # "highlightView":Lcom/soundcloud/android/crop/HighlightView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 38
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 41
    .local v0, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v2, v0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 42
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->invalidate()V

    .line 43
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->centerBasedOnHighlightView(Lcom/soundcloud/android/crop/HighlightView;)V

    goto :goto_0

    .line 48
    .end local v0    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    check-cast v0, Lcom/soundcloud/android/crop/CropImageActivity;

    .line 89
    .local v0, "cropImageActivity":Lcom/soundcloud/android/crop/CropImageActivity;
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 135
    :goto_0
    return v3

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v4

    .line 135
    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soundcloud/android/crop/HighlightView;

    .line 96
    .local v2, "hv":Lcom/soundcloud/android/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/soundcloud/android/crop/HighlightView;->getHit(FF)I

    move-result v1

    .line 97
    .local v1, "edge":I
    if-eq v1, v4, :cond_2

    .line 98
    iput v1, p0, Lcom/soundcloud/android/crop/CropImageView;->motionEdge:I

    .line 99
    iput-object v2, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->validPointerId:I

    .line 104
    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    const/16 v3, 0x20

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Move:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    :goto_2
    invoke-virtual {v5, v3}, Lcom/soundcloud/android/crop/HighlightView;->setMode(Lcom/soundcloud/android/crop/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    goto :goto_2

    .line 112
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :pswitch_1
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v3, :cond_4

    .line 113
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    invoke-direct {p0, v3}, Lcom/soundcloud/android/crop/CropImageView;->centerBasedOnHighlightView(Lcom/soundcloud/android/crop/HighlightView;)V

    .line 114
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    sget-object v5, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    invoke-virtual {v3, v5}, Lcom/soundcloud/android/crop/HighlightView;->setMode(Lcom/soundcloud/android/crop/HighlightView$ModifyMode;)V

    .line 116
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    .line 117
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->center()V

    goto :goto_1

    .line 120
    :pswitch_2
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v5, p0, Lcom/soundcloud/android/crop/CropImageView;->validPointerId:I

    if-ne v3, v5, :cond_5

    .line 121
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/HighlightView;

    iget v5, p0, Lcom/soundcloud/android/crop/CropImageView;->motionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    sub-float/2addr v6, v7

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    sub-float/2addr v7, v8

    .line 121
    invoke-virtual {v3, v5, v6, v7}, Lcom/soundcloud/android/crop/HighlightView;->handleMotion(IFF)V

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->center()V

    goto/16 :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 80
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 81
    .local v0, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v2, v0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 84
    .end local v0    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :cond_0
    return-void
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    return-void
.end method

.method public bridge synthetic setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V

    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn()V

    .line 62
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 63
    .local v0, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v2, v0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 64
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 66
    .end local v0    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut()V

    .line 71
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 72
    .local v0, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v2, v0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 73
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 75
    .end local v0    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 53
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/HighlightView;

    .line 54
    .local v0, "hv":Lcom/soundcloud/android/crop/HighlightView;
    iget-object v2, v0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 55
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 57
    .end local v0    # "hv":Lcom/soundcloud/android/crop/HighlightView;
    :cond_0
    return-void
.end method
