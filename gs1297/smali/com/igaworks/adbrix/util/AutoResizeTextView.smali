.class public Lcom/igaworks/adbrix/util/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private maxTextSize:F

.field private minTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/high16 v1, 0x42480000    # 50.0f

    .line 24
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    .line 25
    iget v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 26
    iput v1, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    .line 28
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    .line 29
    return-void
.end method

.method private refitText(Ljava/lang/String;II)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I
    .param p3, "textHeight"    # I

    .prologue
    .line 32
    if-lez p2, :cond_4

    .line 34
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "splitted":[Ljava/lang/String;
    if-eqz v7, :cond_6

    array-length v9, v7

    if-lez v9, :cond_6

    .line 38
    const/4 v9, 0x0

    aget-object v6, v7, v9

    .line 40
    .local v6, "maxLenStr":Ljava/lang/String;
    array-length v10, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v5, v7, v9

    .line 41
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 42
    move-object v6, v5

    .line 40
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 46
    .end local v5    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingLeft()I

    move-result v9

    sub-int v9, p2, v9

    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingRight()I

    move-result v10

    sub-int v1, v9, v10

    .line 47
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingBottom()I

    move-result v9

    sub-int v9, p3, v9

    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingTop()I

    move-result v10

    sub-int v0, v9, v10

    .line 48
    .local v0, "availableHeight":I
    iget v8, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    .line 50
    .local v8, "trySize":F
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, p1, v10, v11, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 57
    .local v3, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v9, v10

    array-length v10, v7

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 59
    .local v4, "h":I
    :goto_1
    iget v9, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_2

    if-le v4, v0, :cond_3

    .line 61
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    .line 62
    iget v9, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_5

    .line 63
    iget v8, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    .line 71
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    .line 93
    .end local v0    # "availableHeight":I
    .end local v1    # "availableWidth":I
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "h":I
    .end local v6    # "maxLenStr":Ljava/lang/String;
    .end local v7    # "splitted":[Ljava/lang/String;
    .end local v8    # "trySize":F
    :cond_4
    :goto_2
    return-void

    .line 66
    .restart local v0    # "availableHeight":I
    .restart local v1    # "availableWidth":I
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v4    # "h":I
    .restart local v6    # "maxLenStr":Ljava/lang/String;
    .restart local v7    # "splitted":[Ljava/lang/String;
    .restart local v8    # "trySize":F
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    .line 68
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 69
    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v9, v10

    array-length v10, v7

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    goto :goto_1

    .line 75
    .end local v0    # "availableHeight":I
    .end local v1    # "availableWidth":I
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "h":I
    .end local v6    # "maxLenStr":Ljava/lang/String;
    .end local v8    # "trySize":F
    :cond_6
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingLeft()I

    move-result v9

    sub-int v9, p2, v9

    .line 76
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaddingRight()I

    move-result v10

    sub-int v1, v9, v10

    .line 77
    .restart local v1    # "availableWidth":I
    iget v8, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    .line 79
    .restart local v8    # "trySize":F
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    .line 80
    :goto_3
    iget v9, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_7

    .line 81
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 82
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    .line 83
    iget v9, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_8

    .line 84
    iget v8, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    .line 89
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    goto :goto_2

    .line 87
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->setTextSize(IF)V

    goto :goto_3
.end method


# virtual methods
.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 112
    .local v1, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 113
    .local v0, "parentHeight":I
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->refitText(Ljava/lang/String;II)V

    .line 114
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 103
    if-eq p1, p3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->refitText(Ljava/lang/String;II)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adbrix/util/AutoResizeTextView;->refitText(Ljava/lang/String;II)V

    .line 99
    return-void
.end method

.method public setMaxTextSize(I)V
    .locals 1
    .param p1, "minTextSize"    # I

    .prologue
    .line 129
    int-to-float v0, p1

    iput v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->maxTextSize:F

    .line 130
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1
    .param p1, "minTextSize"    # I

    .prologue
    .line 121
    int-to-float v0, p1

    iput v0, p0, Lcom/igaworks/adbrix/util/AutoResizeTextView;->minTextSize:F

    .line 122
    return-void
.end method
