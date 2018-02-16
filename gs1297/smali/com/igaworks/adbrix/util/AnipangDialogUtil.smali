.class public Lcom/igaworks/adbrix/util/AnipangDialogUtil;
.super Ljava/lang/Object;
.source "AnipangDialogUtil.java"


# static fields
.field public static final BASE_HEIGHT:F = 960.0f

.field public static final BASE_WIDTH:F = 576.0f

.field private static canvas:Landroid/graphics/Canvas;

.field private static output:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calNormPixel(Landroid/content/Context;IZ)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v5, 0x44700000    # 960.0f

    const/high16 v4, 0x44100000    # 576.0f

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 56
    .local v0, "difX":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 58
    .local v1, "difY":F
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    .line 59
    move v1, v0

    .line 62
    :cond_0
    move v2, p1

    .line 64
    .local v2, "norPx":I
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 70
    :goto_0
    return v2

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v2, v3

    goto :goto_0
.end method

.method public static convertPixelToDP(Landroid/content/Context;IZ)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x44100000    # 576.0f

    div-float v0, v3, v4

    .line 25
    .local v0, "difX":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x44700000    # 960.0f

    div-float v1, v3, v4

    .line 27
    .local v1, "difY":F
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    .line 28
    move v1, v0

    .line 31
    :cond_0
    int-to-float v2, p1

    .line 33
    .local v2, "norPx":F
    if-eqz p2, :cond_2

    .line 34
    int-to-float v3, p1

    mul-float v2, v3, v0

    .line 39
    :goto_0
    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 40
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 43
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    return v3

    .line 36
    :cond_2
    int-to-float v3, p1

    mul-float v2, v3, v1

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v8, 0x0

    .line 119
    :goto_0
    return-object v8

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 81
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 82
    .local v2, "height":I
    int-to-double v8, p2

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 84
    .local v1, "desiredLength":I
    if-le v2, v1, :cond_1

    .line 86
    :goto_1
    if-le v2, v1, :cond_2

    .line 87
    mul-int v8, v7, v1

    div-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-static {p1, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 94
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    .line 95
    mul-int v8, v7, v1

    div-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-static {p1, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_2

    .line 102
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->output:Landroid/graphics/Bitmap;

    .line 104
    new-instance v8, Landroid/graphics/Canvas;

    sget-object v9, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->output:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->canvas:Landroid/graphics/Canvas;

    .line 105
    const v0, -0xbdbdbe

    .line 106
    .local v0, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 109
    .local v5, "rectF":Landroid/graphics/RectF;
    const/16 v8, 0xe

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v8

    int-to-float v6, v8

    .line 111
    .local v6, "roundPx":F
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 113
    const v8, -0xbdbdbe

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    sget-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    sget-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    sget-object v8, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->output:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public static setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {p0, p2, v1}, Lcom/igaworks/adbrix/util/AnipangDialogUtil;->calNormPixel(Landroid/content/Context;IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    return-void
.end method
