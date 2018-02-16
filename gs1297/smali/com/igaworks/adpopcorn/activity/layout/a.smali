.class public Lcom/igaworks/adpopcorn/activity/layout/a;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->b:D

    iput-wide p4, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->c:D

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "BOTTOM_BAR_HEIGHT"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->setOrientation(I)V

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/a;->a()V

    return-void
.end method

.method private a()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const-wide/high16 v4, 0x404b000000000000L    # 54.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v1, "#585757"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->a:Landroid/content/Context;

    const v3, 0x1010079

    invoke-direct {v1, v2, v11, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->a:Landroid/content/Context;

    const v4, 0x1010041

    invoke-direct {v2, v3, v11, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/a;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/a;->addView(Landroid/view/View;)V

    return-void
.end method
