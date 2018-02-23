.class public Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/igaworks/adbrix/cpe/common/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 52
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 53
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 65
    const/high16 v11, -0x40800000    # -1.0f

    iput v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    .line 66
    const/4 v11, -0x1

    iput v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    .line 80
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->isInEditMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 113
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 84
    .local v10, "res":Landroid/content/res/Resources;
    const-string v11, "#eeeeee"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 85
    .local v5, "defaultPageColor":I
    const-string v11, "#ff0000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "defaultFillColor":I
    const/4 v4, 0x0

    .line 87
    .local v4, "defaultOrientation":I
    const-string v11, "#000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 88
    .local v8, "defaultStrokeColor":I
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v11

    int-to-float v9, v11

    .line 89
    .local v9, "defaultStrokeWidth":F
    const/4 v11, 0x6

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v11

    int-to-float v6, v11

    .line 90
    .local v6, "defaultRadius":F
    const/4 v2, 0x1

    .line 91
    .local v2, "defaultCentered":Z
    const/4 v7, 0x1

    .line 93
    .local v7, "defaultSnap":Z
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCentered:Z

    .line 94
    const/4 v11, 0x0

    iput v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    .line 95
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iput v6, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    .line 104
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    .line 106
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 107
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 112
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v11

    iput v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mTouchSlop:I

    goto :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 461
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 462
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 464
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 466
    :cond_0
    move v1, v3

    .line 477
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 469
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 470
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 473
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 474
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 489
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 490
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 492
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 494
    move v0, v2

    .line 503
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 497
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 499
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 500
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 398
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 204
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 209
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 219
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 220
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 221
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 229
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 230
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 231
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 232
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 233
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    .line 240
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 245
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_9

    .line 246
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 247
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 248
    move v5, v7

    .line 249
    .local v5, "dX":F
    move v6, v14

    .line 255
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 223
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 224
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 225
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 226
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 251
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_8
    move v5, v14

    .line 252
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 266
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 267
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 270
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 271
    add-float v5, v9, v4

    .line 272
    .restart local v5    # "dX":F
    move v6, v14

    .line 277
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 266
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto :goto_4

    .line 274
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 275
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 445
    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mScrollState:I

    .line 404
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    .line 412
    iput p2, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPageOffset:F

    .line 413
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 415
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 418
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 423
    :cond_0
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    .line 424
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnapPage:I

    .line 425
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 431
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 508
    move-object v0, p1

    check-cast v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;

    .line 509
    .local v0, "savedState":Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 510
    iget v1, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    .line 511
    iget v1, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnapPage:I

    .line 512
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->requestLayout()V

    .line 513
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 517
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 518
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 519
    .local v0, "savedState":Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->currentPage:I

    .line 520
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 282
    const/4 v12, 0x1

    .line 360
    :goto_0
    return v12

    .line 284
    :cond_0
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 285
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 289
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 296
    :pswitch_2
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 297
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 298
    .local v11, "x":F
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 300
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 301
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 302
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mIsDragging:Z

    .line 306
    :cond_4
    iget-boolean v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 307
    iput v11, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    .line 308
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 309
    :cond_5
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 318
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 319
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 320
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 321
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 322
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 324
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 325
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 326
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 328
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 329
    :cond_7
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 330
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 331
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 333
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 337
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mIsDragging:Z

    .line 338
    const/4 v12, -0x1

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    .line 339
    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 343
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 344
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    .line 345
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 350
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 351
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 352
    .local v7, "pointerId":I
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 353
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 354
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    .line 356
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 353
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCentered:Z

    .line 118
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 119
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 391
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mCurrentPage:I

    .line 392
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 393
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 137
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 436
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mOrientation:I

    .line 148
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->requestLayout()V

    .line 154
    return-void

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 128
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 179
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mRadius:F

    .line 180
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 181
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mSnap:Z

    .line 189
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 190
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 163
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    .line 172
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_2
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 375
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 376
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 382
    invoke-virtual {p0, p2}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setCurrentItem(I)V

    .line 383
    return-void
.end method
