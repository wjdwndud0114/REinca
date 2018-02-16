.class public Lcom/tapjoy/internal/an;
.super Lcom/tapjoy/internal/ao;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Matrix;

.field private final c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ao;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/an;->a:I

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tapjoy/internal/an;->c:[F

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 49
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ao;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 109
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getWidth()I

    move-result v8

    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getHeight()I

    move-result v9

    .line 55
    int-to-float v3, v8

    int-to-float v4, v9

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 62
    instance-of v3, v2, Landroid/widget/ScrollView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/HorizontalScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    .line 68
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 69
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v6, v3, v4

    .line 70
    rsub-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    rsub-int/lit8 v4, v6, 0x0

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v5, v2

    int-to-float v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :goto_2
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 77
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 79
    :pswitch_0
    neg-int v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/tapjoy/internal/an;->a:I

    mul-int/lit8 v2, v2, -0x5a

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 92
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    packed-switch v0, :pswitch_data_1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 82
    :pswitch_1
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v2, v9

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 85
    :pswitch_2
    neg-int v0, v9

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 106
    :goto_4
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ao;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    add-int/lit8 v1, v8, -0x1

    int-to-float v1, v1

    add-int/lit8 v2, v9, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 100
    :pswitch_5
    iget-object v0, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    add-int/lit8 v2, v9, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ao;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/an;->c:[F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 119
    iget-object v1, p0, Lcom/tapjoy/internal/an;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 120
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 121
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ao;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRotationCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/tapjoy/internal/an;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/ao;->onMeasure(II)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-super {p0, p2, p1}, Lcom/tapjoy/internal/ao;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/an;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/an;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setRotationCount(I)V
    .locals 1
    .param p1, "rotationCount"    # I

    .prologue
    .line 34
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/tapjoy/internal/an;->a:I

    .line 35
    return-void
.end method
