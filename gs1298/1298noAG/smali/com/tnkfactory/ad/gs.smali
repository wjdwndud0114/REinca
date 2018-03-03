.class Lcom/tnkfactory/ad/gs;
.super Lcom/tnkfactory/ad/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private k:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/gs;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p4}, Lcom/tnkfactory/ad/gs;->setId(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/gs;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lcom/tnkfactory/ad/gs;
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/tnkfactory/ad/gs;

    const/16 v2, 0x63

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/tnkfactory/ad/gs;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gs;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tnkfactory/ad/gt;

    invoke-direct {v0}, Lcom/tnkfactory/ad/gt;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1, p2}, Lcom/tnkfactory/ad/gs;->a(II)V

    return-object v1
.end method

.method private b(Landroid/content/Context;II)V
    .locals 10

    const/high16 v0, -0x60000000

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gs;->setBackgroundColor(I)V

    invoke-direct {p0, p3, p2}, Lcom/tnkfactory/ad/gs;->b(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Lcom/tnkfactory/ad/gs;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x4

    invoke-static {p1, v6, v8}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v6

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x2

    invoke-static {p1, v5, v1}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/tnkfactory/ad/gu;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/gu;-><init>(Lcom/tnkfactory/ad/gs;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v2, v3, v7

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x5

    invoke-static {p1, v1, v0}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, -0x3f3f40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(II)[I
    .locals 11

    const v5, 0x3f6f1aa0    # 0.934f

    const v7, 0x3f6ac083    # 0.917f

    const/high16 v4, 0x3f600000    # 0.875f

    const v3, 0x3f2ac083    # 0.667f

    const/high16 v10, 0x3f000000    # 0.5f

    const/16 v0, 0x8

    new-array v8, v0, [I

    if-le p1, p2, :cond_0

    int-to-float v0, p1

    const v1, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v0

    mul-float v0, v1, v3

    mul-float v6, v1, v7

    const v2, 0x3f0fdf3b    # 0.562f

    mul-float v5, v6, v2

    mul-float v4, v1, v7

    const v2, 0x3f26e979    # 0.652f

    mul-float v3, v4, v2

    const v2, 0x3db020c5    # 0.086f

    mul-float/2addr v2, v1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    const/4 v9, 0x0

    add-float/2addr v7, v10

    float-to-int v7, v7

    aput v7, v8, v9

    const/4 v7, 0x1

    add-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v8, v7

    const/4 v6, 0x2

    add-float/2addr v5, v10

    float-to-int v5, v5

    aput v5, v8, v6

    const/4 v5, 0x3

    add-float/2addr v4, v10

    float-to-int v4, v4

    aput v4, v8, v5

    const/4 v4, 0x4

    add-float/2addr v1, v10

    float-to-int v1, v1

    aput v1, v8, v4

    const/4 v1, 0x5

    add-float/2addr v0, v10

    float-to-int v0, v0

    aput v0, v8, v1

    const/4 v0, 0x6

    add-float v1, v3, v10

    float-to-int v1, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    add-float v1, v2, v10

    float-to-int v1, v1

    aput v1, v8, v0

    return-object v8

    :cond_0
    int-to-float v0, p1

    mul-float v1, v0, v5

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    int-to-float v0, p2

    mul-float/2addr v0, v5

    mul-float v1, v0, v3

    :cond_1
    mul-float v6, v1, v4

    const v2, 0x3fc020c5    # 1.501f

    mul-float v5, v6, v2

    mul-float/2addr v4, v1

    const v2, 0x3fd24dd3    # 1.643f

    mul-float v3, v4, v2

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tnkfactory/ad/j;->a()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gs;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gs;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/gs;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/gs;->k:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gs;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object p1, p0, Lcom/tnkfactory/ad/gs;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gs;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
