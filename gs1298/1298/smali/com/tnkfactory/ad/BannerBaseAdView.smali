.class Lcom/tnkfactory/ad/BannerBaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:Lcom/tnkfactory/ad/ei;

.field private b:Lcom/tnkfactory/ad/BannerAdListener;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->c:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->d:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    invoke-direct {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->c:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->d:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    invoke-direct {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iput-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->c:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->d:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    iput-object p2, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-direct {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/BannerBaseAdView;)Lcom/tnkfactory/ad/BannerAdListener;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    new-instance v0, Lcom/tnkfactory/ad/ei;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/tnkfactory/ad/ei;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iget-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/BannerAdListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    new-instance v1, Lcom/tnkfactory/ad/ey;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ey;-><init>(Lcom/tnkfactory/ad/BannerBaseAdView;)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ex;)V

    return-void
.end method


# virtual methods
.method public hasBannerAd()Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/ei;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->c()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v6, 0x1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->c()V

    iput-object v4, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const-string v0, "Banner height must have an exact value or WRAP_CONTENT"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->c()V

    iput-object v4, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const-string v0, "Banner height can not be less than 50dp"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/BannerBaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_5

    invoke-virtual {p0, v4, p1, p2}, Lcom/tnkfactory/ad/BannerBaseAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/tnkfactory/ad/BannerBaseAdView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_5
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tnkfactory/ad/in;->m(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v6, :cond_6

    if-ne v2, v8, :cond_4

    int-to-float v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_6
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v6, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-ne v2, v8, :cond_4

    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->c:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->d:Z

    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->a()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->b()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setBannerAdListener(Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 2

    iput-object p1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    iget-object v1, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->b:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/BannerAdListener;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerBaseAdView;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ei;->b()V

    goto :goto_0
.end method
