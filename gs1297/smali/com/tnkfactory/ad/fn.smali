.class Lcom/tnkfactory/ad/fn;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Camera;

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/tnkfactory/ad/fn;->a:F

    iput p2, p0, Lcom/tnkfactory/ad/fn;->b:F

    iput p3, p0, Lcom/tnkfactory/ad/fn;->c:F

    iput p4, p0, Lcom/tnkfactory/ad/fn;->d:F

    iput p5, p0, Lcom/tnkfactory/ad/fn;->g:F

    iput p6, p0, Lcom/tnkfactory/ad/fn;->f:I

    return-void
.end method

.method private a(F)F
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/tnkfactory/ad/fn;->f:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lcom/tnkfactory/ad/fn;->g:F

    iget v2, p0, Lcom/tnkfactory/ad/fn;->g:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/tnkfactory/ad/fn;->g:F

    sub-float v1, v0, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    goto :goto_0

    :pswitch_2
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tnkfactory/ad/fn;->g:F

    iget v2, p0, Lcom/tnkfactory/ad/fn;->g:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v6

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/tnkfactory/ad/fn;->g:F

    sub-float v1, v0, v1

    mul-float v2, p1, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    iget v0, p0, Lcom/tnkfactory/ad/fn;->a:F

    iget v1, p0, Lcom/tnkfactory/ad/fn;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tnkfactory/ad/fn;->c:F

    iget v2, p0, Lcom/tnkfactory/ad/fn;->d:F

    iget-object v3, p0, Lcom/tnkfactory/ad/fn;->e:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/fn;->a(F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/fn;->a(F)F

    move-result v3

    invoke-virtual {v4, v0, v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Lcom/tnkfactory/ad/fn;->c:F

    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/tnkfactory/ad/fn;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/fn;->c:F

    iget v0, p0, Lcom/tnkfactory/ad/fn;->d:F

    invoke-virtual {p0, v1, v0, p2, p4}, Lcom/tnkfactory/ad/fn;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/fn;->d:F

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/fn;->e:Landroid/graphics/Camera;

    return-void
.end method
