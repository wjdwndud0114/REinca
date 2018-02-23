.class Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final LL:[I

.field private static final LL_DIVIDER:I = 0x0

.field private static final LL_DIVIDER_PADDING:I = 0x2

.field private static final LL_SHOW_DIVIDER:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mShowDividers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->LL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x0

    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->LL:[I

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerPadding:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mShowDividers:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 129
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 130
    invoke-virtual {p0, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 133
    invoke-direct {p0, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 136
    .local v3, "left":I
    invoke-direct {p0, p1, v3}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 129
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .restart local v0    # "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 144
    .local v5, "right":I
    if-nez v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 150
    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 152
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "right":I
    :cond_2
    return-void

    .line 148
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_1
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 102
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 103
    invoke-virtual {p0, v3}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 106
    invoke-direct {p0, v3}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 109
    .local v5, "top":I
    invoke-direct {p0, p1, v5}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 102
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 117
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 123
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 125
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 121
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 156
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 155
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 162
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 161
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    return-void
.end method

.method private hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 63
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 64
    .local v2, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    if-ne v2, v5, :cond_2

    .line 68
    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 76
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    .line 77
    invoke-direct {p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    if-ne v2, v5, :cond_3

    .line 79
    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 85
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 86
    return-void

    .line 71
    .end local v0    # "count":I
    :cond_2
    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 81
    .restart local v0    # "count":I
    :cond_3
    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    return-void

    .line 94
    :cond_1
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    .line 56
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->requestLayout()V

    goto :goto_0

    .line 53
    :cond_2
    iput v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerWidth:I

    .line 54
    iput v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/IcsLinearLayout;->mDividerHeight:I

    goto :goto_1
.end method
