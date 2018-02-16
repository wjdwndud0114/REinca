.class public Lcom/tapjoy/internal/ao;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingLeft()I

    move-result v1

    .line 55
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingTop()I

    move-result v2

    .line 56
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getChildCount()I

    move-result v3

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ao;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 60
    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getChildCount()I

    move-result v3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/ao;->measureChildren(II)V

    move v2, v0

    move v1, v0

    .line 32
    :goto_0
    if-ge v2, v3, :cond_1

    .line 33
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/ao;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 42
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 46
    invoke-virtual {p0}, Lcom/tapjoy/internal/ao;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    invoke-static {v0, p1}, Lcom/tapjoy/internal/ao;->resolveSize(II)I

    move-result v0

    .line 49
    invoke-static {v1, p2}, Lcom/tapjoy/internal/ao;->resolveSize(II)I

    move-result v1

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ao;->setMeasuredDimension(II)V

    .line 50
    return-void
.end method
