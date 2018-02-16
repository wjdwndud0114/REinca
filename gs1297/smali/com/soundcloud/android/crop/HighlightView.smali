.class Lcom/soundcloud/android/crop/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/HighlightView$HandleMode;,
        Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIGHLIGHT_COLOR:I = -0xcc4a1b

.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field private static final HANDLE_RADIUS_DP:F = 12.0f

.field public static final MOVE:I = 0x20

.field private static final OUTLINE_DP:F = 2.0f


# instance fields
.field cropRect:Landroid/graphics/RectF;

.field drawRect:Landroid/graphics/Rect;

.field private handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field private final handlePaint:Landroid/graphics/Paint;

.field private handleRadius:F

.field private highlightColor:I

.field private imageRect:Landroid/graphics/RectF;

.field private initialAspectRatio:F

.field private isFocused:Z

.field private maintainAspectRatio:Z

.field matrix:Landroid/graphics/Matrix;

.field private modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private outlineWidth:F

.field private final outsidePaint:Landroid/graphics/Paint;

.field private showCircle:Z

.field private showThirds:Z

.field private viewContext:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    .line 74
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 75
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    .line 83
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/HighlightView;->initStyles(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 404
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 406
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 407
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 408
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    return-object v1
.end method

.method private dpToPx(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 223
    .local v0, "xMiddle":I
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 225
    .local v1, "yMiddle":I
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    int-to-float v2, v0

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    int-to-float v2, v0

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method private drawOutsideFallback(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method private drawThirds(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 232
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    .line 234
    .local v6, "xThird":F
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v7, v0

    .line 236
    .local v7, "yThird":F
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v6

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v3, v0, v6

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v1, v6, v8

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v3, v6, v8

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v7

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v2, v7, v8

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v4, v7, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    return-void
.end method

.method public static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".R$styleable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 95
    .local v2, "fields2":[Ljava/lang/reflect/Field;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 98
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields2":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v3

    .line 95
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "fields2":[Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields2":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private initStyles(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "cropImageStyle"

    const-string v5, "attr"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "CropImageView"

    invoke-static {p1, v3}, Lcom/soundcloud/android/crop/HighlightView;->getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "CropImageView_showThirds"

    const-string v4, "styleable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "CropImageView_showCircle"

    const-string v4, "styleable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->showCircle:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "CropImageView_highlightColor"

    const-string v4, "styleable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const v3, -0xcc4a1b

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    .line 122
    invoke-static {}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->values()[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "CropImageView_showHandles"

    const-string v5, "styleable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private isClipPathSupported(Landroid/graphics/Canvas;)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 158
    .local v0, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/HighlightView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v1, "viewDrawingRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 166
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 167
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->isClipPathSupported(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 171
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 177
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    if-eqz v2, :cond_2

    .line 180
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawThirds(Landroid/graphics/Canvas;)V

    .line 183
    :cond_2
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/HighlightView;->showCircle:Z

    if-eqz v2, :cond_3

    .line 184
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v3, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Always:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v3, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    sget-object v3, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-ne v2, v3, :cond_0

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawHandles(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 173
    :cond_5
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawOutsideFallback(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getHit(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v8, 0x41a00000    # 20.0f

    .line 260
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v2

    .line 261
    .local v2, "r":Landroid/graphics/Rect;
    const/high16 v1, 0x41a00000    # 20.0f

    .line 262
    .local v1, "hysteresis":F
    const/4 v3, 0x1

    .line 266
    .local v3, "retval":I
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_5

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    cmpg-float v7, p2, v7

    if-gez v7, :cond_5

    move v4, v5

    .line 268
    .local v4, "verticalCheck":Z
    :goto_0
    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    cmpg-float v7, p1, v7

    if-gez v7, :cond_6

    move v0, v5

    .line 272
    .local v0, "horizCheck":Z
    :goto_1
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    if-eqz v4, :cond_0

    .line 273
    or-int/lit8 v3, v3, 0x2

    .line 275
    :cond_0
    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    if-eqz v4, :cond_1

    .line 276
    or-int/lit8 v3, v3, 0x4

    .line 278
    :cond_1
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    if-eqz v0, :cond_2

    .line 279
    or-int/lit8 v3, v3, 0x8

    .line 281
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    if-eqz v0, :cond_3

    .line 282
    or-int/lit8 v3, v3, 0x10

    .line 286
    :cond_3
    if-ne v3, v5, :cond_4

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    const/16 v3, 0x20

    .line 289
    :cond_4
    return v3

    .end local v0    # "horizCheck":Z
    .end local v4    # "verticalCheck":Z
    :cond_5
    move v4, v6

    .line 266
    goto :goto_0

    .restart local v4    # "verticalCheck":Z
    :cond_6
    move v0, v6

    .line 268
    goto :goto_1
.end method

.method public getScaledCropRect(F)Landroid/graphics/Rect;
    .locals 5
    .param p1, "scale"    # F

    .prologue
    .line 398
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method growBy(FF)V
    .locals 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/high16 v0, 0x41c80000    # 25.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 340
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_0

    .line 341
    cmpl-float v3, p1, v5

    if-eqz v3, :cond_8

    .line 342
    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, v3

    .line 351
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 352
    .local v1, "r":Landroid/graphics/RectF;
    cmpl-float v3, p1, v5

    if-lez v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v4, v6, p1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 353
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    div-float p1, v3, v6

    .line 354
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_1

    .line 355
    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, v3

    .line 358
    :cond_1
    cmpl-float v3, p2, v5

    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, v6, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float p2, v3, v6

    .line 360
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_2

    .line 361
    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float p1, p2, v3

    .line 365
    :cond_2
    neg-float v3, p1

    neg-float v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 368
    const/high16 v2, 0x41c80000    # 25.0f

    .line 369
    .local v2, "widthCap":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    .line 370
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v3, v0, v3

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 372
    :cond_3
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float/2addr v0, v3

    .line 375
    .local v0, "heightCap":F
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_5

    .line 376
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 380
    :cond_5
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 381
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 385
    :cond_6
    :goto_1
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 386
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 391
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 392
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 393
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 394
    return-void

    .line 343
    .end local v0    # "heightCap":F
    .end local v1    # "r":Landroid/graphics/RectF;
    .end local v2    # "widthCap":F
    :cond_8
    cmpl-float v3, p2, v5

    if-eqz v3, :cond_0

    .line 344
    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float p1, p2, v3

    goto/16 :goto_0

    .line 382
    .restart local v0    # "heightCap":F
    .restart local v1    # "r":Landroid/graphics/RectF;
    .restart local v2    # "widthCap":F
    :cond_9
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 383
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 387
    :cond_a
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 388
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method handleMotion(IFF)V
    .locals 7
    .param p1, "edge"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 295
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 296
    .local v0, "r":Landroid/graphics/Rect;
    const/16 v5, 0x20

    if-ne p1, v5, :cond_0

    .line 298
    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 299
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    .line 298
    invoke-virtual {p0, v3, v4}, Lcom/soundcloud/android/crop/HighlightView;->moveBy(FF)V

    .line 315
    :goto_0
    return-void

    .line 301
    :cond_0
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_1

    .line 302
    const/4 p2, 0x0

    .line 305
    :cond_1
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_2

    .line 306
    const/4 p3, 0x0

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 311
    .local v1, "xDelta":F
    iget-object v5, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 312
    .local v2, "yDelta":F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_3

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_4

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/soundcloud/android/crop/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 413
    return-void
.end method

.method moveBy(FF)V
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v5, 0x0

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 321
    .local v0, "invalRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 324
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 325
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 326
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 328
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    .line 329
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 330
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 328
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 332
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 333
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 334
    iget v1, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int v1, v1

    neg-int v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 335
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 336
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "isFocused"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    .line 421
    return-void
.end method

.method public setMode(Lcom/soundcloud/android/crop/HighlightView$ModifyMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 253
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 254
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 256
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 4
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "imageRect"    # Landroid/graphics/Rect;
    .param p3, "cropRect"    # Landroid/graphics/RectF;
    .param p4, "maintainAspectRatio"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x32

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    .line 131
    iput-object p3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    .line 133
    iput-boolean p4, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    .line 135
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    .line 136
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 138
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 139
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    .line 143
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    .line 148
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 149
    return-void
.end method
