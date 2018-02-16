.class public Lcom/igaworks/adpopcorn/activity/layout/b;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    iput-wide p4, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->c:D

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_HEIGHT"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->d:F

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_BG_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/b;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/b;->a()V

    return-void
.end method

.method private a()V
    .locals 12

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v2

    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v4, "TOP_BAR_TEXT_SIZE_DP"

    invoke-virtual {v1, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_TEXT_BOLD"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_0
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "OFFERWALL_TITLE_LOGO_RESOURCE_ID"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "OFFERWALL_TITLE_TEXT"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x0

    const/16 v1, -0x64

    if-eq v4, v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/layout/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    :goto_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v6, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v1, v6}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v6, -0x64

    if-ne v1, v6, :cond_6

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v6, 0x403c000000000000L    # 28.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const-wide/high16 v8, 0x403c000000000000L    # 28.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    const-string v7, "igaworks/adpopcorn/res/ic_close.png"

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_1
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    const/16 v1, -0x64

    if-eq v4, v1, :cond_7

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    :cond_1
    :goto_2
    invoke-virtual {p0, v2}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    iget v4, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v1

    :goto_3
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, v2, Lcom/igaworks/adpopcorn/cores/common/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v8, 0x4068a00000000000L    # 197.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->b:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide v8, 0x4041800000000000L    # 35.0

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->c:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    const-string v7, "igaworks/adpopcorn/res/main_logo_android.png"

    const/4 v8, 0x0

    invoke-static {v0, v7, v1, v8}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v1

    :goto_6
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    iget-object v1, v2, Lcom/igaworks/adpopcorn/cores/common/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v6, "TOP_BAR_CLOSE_BTN_RESOURCE_WIDTH"

    invoke-virtual {v1, v6}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    int-to-float v6, v1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v7, "TOP_BAR_CLOSE_BTN_RESOURCE_HEIGHT"

    invoke-virtual {v1, v7}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    int-to-float v7, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v6

    float-to-int v6, v6

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/layout/b;->a:Landroid/content/Context;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/b;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3
.end method
