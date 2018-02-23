.class public Lcom/igaworks/core/DisplaySetter;
.super Ljava/lang/Object;
.source "DisplaySetter.java"


# static fields
.field public static final BASE_HEIGHT:F = 1920.0f

.field public static final BASE_WIDTH:F = 1080.0f

.field private static density:I

.field private static displayXY:Landroid/util/DisplayMetrics;

.field private static isInit:Z

.field public static isPortrait:Z

.field private static scale:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    .line 16
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calNormPixel(Landroid/content/Context;IZ)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v5, 0x44f00000    # 1920.0f

    const/high16 v4, 0x44870000    # 1080.0f

    .line 86
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v3

    sget-boolean v3, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    div-float v0, v6, v3

    .line 89
    .local v0, "difX":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sget-boolean v6, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    if-eqz v6, :cond_2

    :goto_1
    div-float v1, v3, v5

    .line 91
    .local v1, "difY":F
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    .line 92
    move v1, v0

    .line 95
    :cond_0
    move v2, p1

    .line 97
    .local v2, "norPx":I
    if-eqz p2, :cond_3

    .line 98
    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 103
    :goto_2
    return v2

    .end local v0    # "difX":F
    .end local v1    # "difY":F
    .end local v2    # "norPx":I
    :cond_1
    move v3, v5

    .line 88
    goto :goto_0

    .restart local v0    # "difX":F
    :cond_2
    move v5, v4

    .line 89
    goto :goto_1

    .line 100
    .restart local v1    # "difY":F
    .restart local v2    # "norPx":I
    :cond_3
    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-int v2, v3

    goto :goto_2
.end method

.method public static convertPixelToDP(Landroid/content/Context;IZ)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v5, 0x44f00000    # 1920.0f

    const/high16 v4, 0x44870000    # 1080.0f

    .line 58
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v3

    sget-boolean v3, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    div-float v0, v6, v3

    .line 61
    .local v0, "difX":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sget-boolean v6, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    if-eqz v6, :cond_3

    :goto_1
    div-float v1, v3, v5

    .line 63
    .local v1, "difY":F
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    .line 64
    move v1, v0

    .line 67
    :cond_0
    int-to-float v2, p1

    .line 69
    .local v2, "norPx":F
    if-eqz p2, :cond_4

    .line 70
    int-to-float v3, p1

    mul-float v2, v3, v0

    .line 75
    :goto_2
    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 76
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 80
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

    .end local v0    # "difX":F
    .end local v1    # "difY":F
    .end local v2    # "norPx":F
    :cond_2
    move v3, v5

    .line 60
    goto :goto_0

    .restart local v0    # "difX":F
    :cond_3
    move v5, v4

    .line 61
    goto :goto_1

    .line 72
    .restart local v1    # "difY":F
    .restart local v2    # "norPx":F
    :cond_4
    int-to-float v3, p1

    mul-float v2, v3, v1

    goto :goto_2
.end method

.method public static getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-boolean v0, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    if-nez v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 131
    :cond_0
    sget-object v0, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getInverseOfScale(Landroid/content/Context;)D
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 147
    sget-boolean v2, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    if-nez v2, :cond_0

    .line 148
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 151
    :cond_0
    sget-wide v2, Lcom/igaworks/core/DisplaySetter;->scale:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 155
    :goto_0
    return-wide v0

    :cond_1
    sget-wide v2, Lcom/igaworks/core/DisplaySetter;->scale:D

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public static getNormalizeFactor(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->getPixelFactor(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getPixelFactor(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-boolean v0, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 122
    :cond_0
    sget-object v0, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v1, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43020000    # 130.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getScale(Landroid/content/Context;)D
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    sget-boolean v0, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->initScale(Landroid/content/Context;)V

    .line 139
    :cond_0
    sget-wide v0, Lcom/igaworks/core/DisplaySetter;->scale:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 140
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 143
    :goto_0
    return-wide v0

    :cond_1
    sget-wide v0, Lcom/igaworks/core/DisplaySetter;->scale:D

    goto :goto_0
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 26
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, p0

    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 29
    .local v0, "a":Landroid/app/Activity;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v4, Lcom/igaworks/core/DisplaySetter;->density:I

    .line 32
    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    sget v6, Lcom/igaworks/core/DisplaySetter;->density:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    sput-wide v4, Lcom/igaworks/core/DisplaySetter;->scale:D

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 36
    .local v2, "display":Landroid/view/Display;
    sget-object v4, Lcom/igaworks/core/DisplaySetter;->displayXY:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    sput-boolean v8, Lcom/igaworks/core/DisplaySetter;->isInit:Z

    .line 41
    .end local v0    # "a":Landroid/app/Activity;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 43
    .local v1, "config":Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 44
    const/4 v4, 0x0

    sput-boolean v4, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_1
    sput-boolean v8, Lcom/igaworks/core/DisplaySetter;->isPortrait:Z

    goto :goto_0
.end method

.method public static setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {p0, p2, v1}, Lcom/igaworks/core/DisplaySetter;->calNormPixel(Landroid/content/Context;IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    return-void
.end method
