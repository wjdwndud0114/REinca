.class public Lcom/tnkfactory/ad/a/e;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private a:Landroid/graphics/BitmapShader;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/a/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/a/e;->a:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/a/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/a/e;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/tnkfactory/ad/a/e;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tnkfactory/ad/a/e;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/tnkfactory/ad/a/e;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tnkfactory/ad/a/e;->a:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/tnkfactory/ad/a/e;->c:Landroid/graphics/RectF;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/tnkfactory/ad/a/e;->d:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/a/e;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tnkfactory/ad/a/e;->d:F

    iget v2, p0, Lcom/tnkfactory/ad/a/e;->d:F

    iget-object v3, p0, Lcom/tnkfactory/ad/a/e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
