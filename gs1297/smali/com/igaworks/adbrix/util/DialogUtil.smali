.class public Lcom/igaworks/adbrix/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field public static final BASE_HEIGHT:F = 1280.0f

.field public static final BASE_WIDTH:F = 720.0f

.field private static canvas:Landroid/graphics/Canvas;

.field private static output:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calNormPixel(Landroid/content/Context;IZ)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v8, 0x44a00000    # 1280.0f

    const/high16 v7, 0x44340000    # 720.0f

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    :cond_0
    int-to-float v5, v4

    div-float v0, v5, v7

    .line 73
    .local v0, "difX":F
    int-to-float v5, v2

    div-float v1, v5, v8

    .line 75
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 76
    move v1, v0

    .line 79
    :cond_1
    move v3, p1

    .line 81
    .local v3, "norPx":I
    if-eqz p2, :cond_2

    .line 82
    mul-int v5, p1, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 87
    :goto_0
    return v3

    .line 84
    :cond_2
    mul-int v5, p1, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v3, v5

    goto :goto_0
.end method

.method public static convertPixelToDP(Landroid/content/Context;IZ)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 33
    :cond_0
    int-to-float v5, v4

    const/high16 v6, 0x44340000    # 720.0f

    div-float v0, v5, v6

    .line 34
    .local v0, "difX":F
    int-to-float v5, v2

    const/high16 v6, 0x44a00000    # 1280.0f

    div-float v1, v5, v6

    .line 36
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 37
    move v1, v0

    .line 40
    :cond_1
    int-to-float v3, p1

    .line 42
    .local v3, "norPx":F
    if-eqz p2, :cond_3

    .line 43
    int-to-float v5, p1

    mul-float v3, v5, v0

    .line 48
    :goto_0
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 49
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 52
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    return v5

    .line 45
    :cond_3
    int-to-float v5, p1

    mul-float v3, v5, v1

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v8, 0x0

    .line 136
    :goto_0
    return-object v8

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 98
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 99
    .local v2, "height":I
    int-to-double v8, p2

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 101
    .local v1, "desiredLength":I
    if-le v2, v1, :cond_1

    .line 103
    :goto_1
    if-le v2, v1, :cond_2

    .line 104
    mul-int v8, v7, v1

    div-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-static {p1, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 111
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    .line 112
    mul-int v8, v7, v1

    div-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-static {p1, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_2

    .line 119
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->output:Landroid/graphics/Bitmap;

    .line 121
    new-instance v8, Landroid/graphics/Canvas;

    sget-object v9, Lcom/igaworks/adbrix/util/DialogUtil;->output:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->canvas:Landroid/graphics/Canvas;

    .line 122
    const v0, -0xbdbdbe

    .line 123
    .local v0, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 124
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 126
    .local v5, "rectF":Landroid/graphics/RectF;
    const/16 v8, 0xe

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/igaworks/adbrix/util/DialogUtil;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v8

    int-to-float v6, v8

    .line 128
    .local v6, "roundPx":F
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    sget-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 130
    const v8, -0xbdbdbe

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    sget-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->canvas:Landroid/graphics/Canvas;

    const v9, 0x3fa66666    # 1.3f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    int-to-float v9, v9

    const v10, 0x3fa66666    # 1.3f

    mul-float/2addr v10, v6

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v5, v9, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    sget-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 136
    sget-object v8, Lcom/igaworks/adbrix/util/DialogUtil;->output:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public static setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p0, p2, v1}, Lcom/igaworks/adbrix/util/DialogUtil;->calNormPixel(Landroid/content/Context;IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    return-void
.end method
