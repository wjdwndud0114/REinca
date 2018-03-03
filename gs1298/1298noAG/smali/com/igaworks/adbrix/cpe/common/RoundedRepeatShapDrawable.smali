.class public Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "RoundedRepeatShapDrawable.java"


# instance fields
.field private final fillpaint:Landroid/graphics/Paint;

.field mDF:Landroid/graphics/PaintFlagsDrawFilter;

.field mPaint:Landroid/graphics/Paint;

.field mShader:Landroid/graphics/BitmapShader;

.field mTexture:Landroid/graphics/Bitmap;

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
    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;IIILandroid/graphics/Bitmap;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;IIILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "fill"    # I
    .param p3, "stroke"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 27
    iput p4, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokeWidth:I

    .line 29
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mDF:Landroid/graphics/PaintFlagsDrawFilter;

    .line 33
    iput-object p5, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mTexture:Landroid/graphics/Bitmap;

    .line 35
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mTexture:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mShader:Landroid/graphics/BitmapShader;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 41
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->fillpaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokepaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokepaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokepaint:Landroid/graphics/Paint;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokepaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mDF:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 51
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 53
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 54
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokeWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokeWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokeWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 60
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/igaworks/adbrix/cpe/common/RoundedRepeatShapDrawable;->strokeWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 62
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 65
    return-void
.end method
