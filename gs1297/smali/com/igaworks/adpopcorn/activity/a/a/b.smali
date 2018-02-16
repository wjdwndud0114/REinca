.class public Lcom/igaworks/adpopcorn/activity/a/a/b;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->c()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->d()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    if-nez p3, :cond_0

    const-wide v2, 0x4083500000000000L    # 618.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 p3, v0

    :cond_0
    if-nez p4, :cond_1

    const-wide v2, 0x4064600000000000L    # 163.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 p4, v0

    :cond_1
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v3, p4

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int v6, p4, v6

    move/from16 v0, p3

    invoke-direct {v2, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x4062800000000000L    # 148.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_4

    const-wide/high16 v8, 0x4036000000000000L    # 22.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/c/f;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v6, v7}, Lcom/igaworks/adpopcorn/activity/c/f;-><init>(Landroid/content/Context;F)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v8, 0x405f000000000000L    # 124.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide/high16 v8, 0x405f000000000000L    # 124.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x10

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/activity/c/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/activity/c/f;->setId(I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v8, 0x4052800000000000L    # 74.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide v8, 0x4052800000000000L    # 74.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x4048000000000000L    # 48.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x10

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x405b800000000000L    # 110.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    iget-wide v12, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4061c00000000000L    # 142.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v6, 0x4033000000000000L    # 19.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x4061c00000000000L    # 142.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#eeeeee"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v4, 0x4064600000000000L    # 163.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v6, 0x4065200000000000L    # 169.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#eeeeee"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p0, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/adpopcorn/activity/a/a/b;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide v6, 0x4064600000000000L    # 163.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v6, 0x4064600000000000L    # 163.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const-wide v8, 0x4064200000000000L    # 161.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_4
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_5
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v6, 0x403c000000000000L    # 28.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;-><init>(Landroid/content/Context;ZII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZZZ)Lcom/igaworks/adpopcorn/activity/a/a/b;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const-wide v0, 0x4083500000000000L    # 618.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->c()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v1, v0

    const-wide v2, 0x4064600000000000L    # 163.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->d()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    if-eqz p3, :cond_0

    const-wide v0, 0x4082c00000000000L    # 600.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v1, v0

    const-wide v2, 0x4063c00000000000L    # 158.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :cond_0
    new-instance v2, Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/igaworks/adpopcorn/activity/a/a/b;-><init>(Landroid/content/Context;ZII)V

    if-eqz p2, :cond_1

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;-><init>(Landroid/content/Context;ZII)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/d;Z)V
    .locals 33

    if-eqz p3, :cond_5

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "OTHER_TYPE_BADGE_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "OTHER_TYPE_BADGE_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->e()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v24

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adpopcorn/cores/model/d;->o()I

    move-result v26

    invoke-static/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v27

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v8, v0

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/igaworks/adpopcorn/activity/c/f;

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v14, v0

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v9, v0

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v21, v0

    new-instance v28, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v10

    double-to-int v2, v6

    int-to-float v2, v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v5

    const-string v6, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v5, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v29, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v7

    const-string v10, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v7, v10}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v7

    const-string v10, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v7, v10}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v10

    double-to-int v2, v6

    int-to-float v2, v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v5

    const-string v6, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v5, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-static/range {v24 .. v24}, Lcom/igaworks/adpopcorn/cores/common/i;->b(I)I

    move-result v30

    invoke-static/range {v24 .. v24}, Lcom/igaworks/adpopcorn/cores/common/i;->a(I)I

    move-result v2

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Lcom/igaworks/adpopcorn/cores/common/f;I)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    move-object/from16 v0, v32

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v6, v10

    double-to-int v2, v6

    int-to-float v2, v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x1

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v10

    double-to-int v5, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v6, v10

    double-to-int v6, v6

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0x1b

    const/4 v5, 0x0

    const-string v2, "#495057"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    move-object v2, v15

    move-object/from16 v3, v22

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, ""

    const/4 v2, 0x0

    const/16 v4, 0x10

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1a

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1b

    move/from16 v0, v24

    if-ne v0, v4, :cond_6

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v4, "igaworks/adpopcorn/res/ic_play.png"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v14, v5}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_0
    const/4 v4, 0x7

    move/from16 v0, v24

    if-eq v0, v4, :cond_1

    const/16 v4, 0x17

    move/from16 v0, v24

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v2

    const-string v4, "participateFlag"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v4, v1, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->J:Ljava/lang/String;

    :cond_2
    const/16 v4, 0x19

    move/from16 v0, v24

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v2

    const-string v4, "participateFlag"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v4, v1, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->be:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v6, "REWARD_VIEW_CHECKED_TEXT_COLOR"

    invoke-virtual {v2, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    move-object/from16 v2, v19

    move-object/from16 v3, v31

    move/from16 v6, v30

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_c

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v4, 0x4064600000000000L    # 163.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "igaworks/adpopcorn/res/badge_new.png"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    if-eqz v23, :cond_8

    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string v3, ""

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v6, "REWARD_VIEW_CHECKED_TEXT_COLOR"

    invoke-virtual {v2, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x1c

    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_b

    const/16 v4, 0x14

    :cond_a
    :goto_4
    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "REWARD_VIEW_TEXT_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_a

    const/16 v4, 0x18

    goto :goto_4

    :cond_c
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v4, 0x4065200000000000L    # 169.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/b;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "igaworks/adpopcorn/res/badge_hot.png"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "igaworks/adpopcorn/res/badge_end.png"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public a(Landroid/view/View;Lcom/igaworks/adpopcorn/cores/model/d;)V
    .locals 8

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adpopcorn/activity/c/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->a:Landroid/content/Context;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/a/a/b;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
