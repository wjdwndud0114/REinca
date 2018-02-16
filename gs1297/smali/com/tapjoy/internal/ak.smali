.class public final Lcom/tapjoy/internal/ak;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:F

.field private final c:F

.field private final d:I

.field private final e:F

.field private final f:I

.field private final g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(ZFFIFIF)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/tapjoy/internal/ak;->a:Z

    .line 34
    iput p2, p0, Lcom/tapjoy/internal/ak;->b:F

    .line 35
    iput p3, p0, Lcom/tapjoy/internal/ak;->c:F

    .line 36
    iput p4, p0, Lcom/tapjoy/internal/ak;->d:I

    .line 37
    iput p5, p0, Lcom/tapjoy/internal/ak;->e:F

    .line 38
    iput p6, p0, Lcom/tapjoy/internal/ak;->f:I

    .line 39
    iput p7, p0, Lcom/tapjoy/internal/ak;->g:F

    .line 40
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 52
    iget v0, p0, Lcom/tapjoy/internal/ak;->b:F

    .line 53
    iget v1, p0, Lcom/tapjoy/internal/ak;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 54
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/tapjoy/internal/ak;->j:Landroid/graphics/Camera;

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 58
    iget-boolean v3, p0, Lcom/tapjoy/internal/ak;->a:Z

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 63
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 66
    iget v0, p0, Lcom/tapjoy/internal/ak;->h:F

    .line 67
    iget v2, p0, Lcom/tapjoy/internal/ak;->i:F

    .line 68
    neg-float v3, v0

    neg-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 69
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 70
    return-void

    .line 61
    :cond_0
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 45
    iget v0, p0, Lcom/tapjoy/internal/ak;->d:I

    iget v1, p0, Lcom/tapjoy/internal/ak;->e:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/tapjoy/internal/ak;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ak;->h:F

    .line 46
    iget v0, p0, Lcom/tapjoy/internal/ak;->f:I

    iget v1, p0, Lcom/tapjoy/internal/ak;->g:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/tapjoy/internal/ak;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ak;->i:F

    .line 47
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ak;->j:Landroid/graphics/Camera;

    .line 48
    return-void
.end method
