.class public Lcom/igaworks/adpopcorn/activity/c/e;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static synthetic t:[I


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/BitmapShader;

.field private l:Landroid/graphics/Shader$TileMode;

.field private m:Landroid/graphics/Shader$TileMode;

.field private n:Z

.field private o:F

.field private p:Z

.field private q:F

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6

    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->l:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->m:Landroid/graphics/Shader$TileMode;

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/c/e;->n:Z

    iput v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->p:Z

    iput v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->s:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/igaworks/adpopcorn/activity/c/e;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/e;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const-string v0, "RoundedDrawable"

    const-string v1, "Failed to create bitmap from drawable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/e;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/c/e;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/igaworks/adpopcorn/activity/c/e;->t:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/igaworks/adpopcorn/activity/c/e;->t:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x2

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    const/4 v0, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {}, Lcom/igaworks/adpopcorn/activity/c/e;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->s:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v2, v2

    div-float v2, v1, v2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    :goto_1
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    add-float/2addr v1, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    add-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v2, v2

    div-float v2, v1, v2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(F)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 4

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Landroid/graphics/Shader$TileMode;)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->l:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->l:Landroid/graphics/Shader$TileMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->n:Z

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->s:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->s:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->b()V

    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->p:Z

    return-object p0
.end method

.method public b(F)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 2

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public b(Landroid/graphics/Shader$TileMode;)Lcom/igaworks/adpopcorn/activity/c/e;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->m:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->m:Landroid/graphics/Shader$TileMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->n:Z

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->n:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->l:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->m:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->k:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->l:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->m:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->k:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->k:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->n:Z

    :cond_1
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->p:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->q:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/e;->o:F

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->g:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->f:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->b()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->r:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/e;->invalidateSelf()V

    return-void
.end method
