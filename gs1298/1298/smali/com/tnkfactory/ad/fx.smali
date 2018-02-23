.class public Lcom/tnkfactory/ad/fx;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/fx;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/fx;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/fx;->c:I

    iput v0, p0, Lcom/tnkfactory/ad/fx;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/fx;->e:I

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/fx;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tnkfactory/ad/fx;
    .locals 6

    const/high16 v5, 0x41200000    # 10.0f

    new-instance v0, Lcom/tnkfactory/ad/fx;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/fx;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v1

    iget v1, v1, Lcom/tnkfactory/ad/hz;->H:F

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x429e0000    # 79.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/fx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v2, v5, v1

    float-to-int v2, v2

    mul-float v3, v5, v1

    float-to-int v3, v3

    mul-float v4, v5, v1

    float-to-int v4, v4

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tnkfactory/ad/fx;->setPadding(IIII)V

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/hz;->H:F

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42840000    # 66.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v1, v9}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v3, v11}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLines(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1, v4, v8}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setLines(I)V

    const/16 v5, 0xf

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const v5, -0xfefeff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1, v5, v12}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0xf

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-virtual {v5, v6, v10, v0, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const v0, -0x79797a

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v5, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/fx;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/fx;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/fx;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/tnkfactory/ad/fx;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/tnkfactory/ad/fx;->addView(Landroid/view/View;)V

    iput v9, p0, Lcom/tnkfactory/ad/fx;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/fx;->b:I

    iput v11, p0, Lcom/tnkfactory/ad/fx;->c:I

    iput v8, p0, Lcom/tnkfactory/ad/fx;->d:I

    iput v12, p0, Lcom/tnkfactory/ad/fx;->e:I

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1f1f11

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public setEmptyItem(Z)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->a:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->b:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->c:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->d:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->e:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/fx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/fx;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->a:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->b:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->c:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->d:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tnkfactory/ad/fx;->e:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
