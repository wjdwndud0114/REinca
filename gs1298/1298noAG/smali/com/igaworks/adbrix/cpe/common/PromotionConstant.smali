.class public Lcom/igaworks/adbrix/cpe/common/PromotionConstant;
.super Ljava/lang/Object;
.source "PromotionConstant.java"


# static fields
.field public static final BASE_HEIGHT:F = 800.0f

.field public static final BASE_WIDTH:F = 480.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calNormPixel(Landroid/content/Context;IZ)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v7, 0x43f00000    # 480.0f

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 57
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    :cond_0
    int-to-float v5, v4

    div-float v0, v5, v7

    .line 63
    .local v0, "difX":F
    int-to-float v5, v2

    div-float v1, v5, v8

    .line 65
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 66
    move v1, v0

    .line 69
    :cond_1
    move v3, p1

    .line 71
    .local v3, "norPx":I
    if-eqz p2, :cond_2

    .line 72
    mul-int v5, p1, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 77
    :goto_0
    return v3

    .line 74
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
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    :cond_0
    int-to-float v5, v4

    const/high16 v6, 0x43f00000    # 480.0f

    div-float v0, v5, v6

    .line 24
    .local v0, "difX":F
    int-to-float v5, v2

    const/high16 v6, 0x44480000    # 800.0f

    div-float v1, v5, v6

    .line 26
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 27
    move v1, v0

    .line 30
    :cond_1
    int-to-float v3, p1

    .line 32
    .local v3, "norPx":F
    if-eqz p2, :cond_3

    .line 33
    int-to-float v5, p1

    mul-float v3, v5, v0

    .line 38
    :goto_0
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 39
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 42
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

    .line 35
    :cond_3
    int-to-float v5, p1

    mul-float v3, v5, v1

    goto :goto_0
.end method

.method public static setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {p0, p2, v1}, Lcom/igaworks/adbrix/cpe/common/PromotionConstant;->calNormPixel(Landroid/content/Context;IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    return-void
.end method
