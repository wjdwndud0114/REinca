.class public Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RepeatBGLinearLayout.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDF:Landroid/graphics/PaintFlagsDrawFilter;

.field mPaint:Landroid/graphics/Paint;

.field mShader:Landroid/graphics/BitmapShader;

.field mTexture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mDF:Landroid/graphics/PaintFlagsDrawFilter;

    .line 36
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mTexture:Landroid/graphics/Bitmap;

    .line 38
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mTexture:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mShader:Landroid/graphics/BitmapShader;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mDF:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 54
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method
