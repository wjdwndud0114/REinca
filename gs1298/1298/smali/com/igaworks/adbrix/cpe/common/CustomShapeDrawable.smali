.class public Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "CustomShapeDrawable.java"


# instance fields
.field private final fillpaint:Landroid/graphics/Paint;

.field private final strokeWidth:I

.field private final strokepaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;III)V
    .locals 6
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "fill"    # I
    .param p3, "stroke"    # I
    .param p4, "strokeWidth"    # I

    .prologue
    .line 20
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;IIIZ)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;IIIZ)V
    .locals 4
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "fill"    # I
    .param p3, "stroke"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "grayScale"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 25
    iput p4, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokeWidth:I

    .line 26
    new-instance v2, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->fillpaint:Landroid/graphics/Paint;

    .line 27
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->fillpaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    new-instance v2, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokepaint:Landroid/graphics/Paint;

    .line 31
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokepaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokepaint:Landroid/graphics/Paint;

    int-to-float v3, p4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokepaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    if-eqz p5, :cond_0

    .line 36
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 37
    .local v1, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 38
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 39
    .local v0, "cf":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->strokepaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    .end local v0    # "cf":Landroid/graphics/ColorMatrixColorFilter;
    .end local v1    # "matrix":Landroid/graphics/ColorMatrix;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 57
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 61
    return-void
.end method
