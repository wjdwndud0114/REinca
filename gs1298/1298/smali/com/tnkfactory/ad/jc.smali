.class public Lcom/tnkfactory/ad/jc;
.super Lcom/tnkfactory/ad/AdLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tnkfactory/ad/jc;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tnkfactory/ad/jc;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tnkfactory/ad/jc;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xcccccd
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0xb8e
        -0x6a006b
    .end array-data

    :array_2
    .array-data 4
        -0x126f5
        -0xe228d3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/jc;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/jc;->e:I

    rem-int/lit8 v0, p5, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/jc;->e:I

    div-int/lit8 v0, p5, 0xa

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/jc;->d:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/jc;->b(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/jc;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private a(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIIII)Lcom/tnkfactory/ad/jc;
    .locals 7

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/jc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/jc;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, p5}, Lcom/tnkfactory/ad/jc;->setId(I)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/jc;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xefeff0

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/jc;->setBackgroundColor(I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;II)V
    .locals 8

    const/16 v7, 0x11

    const/16 v6, 0xd

    const/4 v5, -0x1

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/hz;->H:F

    int-to-float v1, p3

    int-to-float v2, p2

    invoke-direct {p0, v1, v2, v0}, Lcom/tnkfactory/ad/jc;->a(FFF)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v7

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/jc;->addView(Landroid/view/View;)V

    const/4 v2, 0x4

    aget v2, v0, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x10

    invoke-static {p1, v3, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v3, v7}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x6

    invoke-static {p1, v4, v2}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/jc;->setupConnerButtons([I)V

    return-void
.end method

.method private a(FFF)[I
    .locals 18

    const/16 v1, 0x14

    new-array v15, v1, [I

    cmpl-float v1, p2, p1

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x41800000    # 16.0f

    div-float p1, v1, v2

    :cond_0
    const/high16 v1, 0x41100000    # 9.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x41800000    # 16.0f

    div-float v10, v1, v2

    sub-float v1, p1, v10

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v9, v1, v2

    const v1, 0x3e75c28f    # 0.24f

    mul-float v8, p1, v1

    const v1, 0x3fb33333    # 1.4f

    mul-float v7, v8, v1

    const v1, 0x3f333333    # 0.7f

    mul-float v6, v7, v1

    const v1, 0x3d1374bc    # 0.036f

    mul-float v5, p2, v1

    const/16 v4, 0x14

    const/16 v3, 0x14

    const/16 v2, 0xf

    const/4 v1, 0x2

    move v11, v9

    move v12, v10

    move/from16 v13, p2

    move/from16 v14, p2

    move v10, v8

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    :goto_0
    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v14, v14, v17

    float-to-int v14, v14

    aput v14, v15, v16

    const/4 v14, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v13, v13, v16

    float-to-int v13, v13

    aput v13, v15, v14

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v15, v13

    const/4 v12, 0x3

    const/high16 v13, 0x3f000000    # 0.5f

    add-float v13, v13, p2

    float-to-int v13, v13

    aput v13, v15, v12

    const/4 v12, 0x4

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    aput v11, v15, v12

    const/4 v11, 0x5

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v15, v11

    const/4 v10, 0x6

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    aput v9, v15, v10

    const/4 v9, 0x7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v15, v9

    const/16 v8, 0x8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    aput v7, v15, v8

    const/16 v7, 0x9

    const v8, 0x3eaa7efa    # 0.333f

    mul-float/2addr v8, v6

    float-to-int v8, v8

    aput v8, v15, v7

    const/16 v7, 0xa

    const v8, 0x3f956042    # 1.167f

    mul-float/2addr v8, v6

    float-to-int v8, v8

    aput v8, v15, v7

    const/16 v7, 0xb

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v15, v7

    const/16 v6, 0xc

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v15, v6

    const/16 v5, 0xd

    aput v4, v15, v5

    const/16 v4, 0xe

    aput v3, v15, v4

    const/16 v3, 0xf

    aput v2, v15, v3

    const/16 v2, 0x10

    aput v1, v15, v2

    const/16 v1, 0x11

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p1

    float-to-int v2, v2

    aput v2, v15, v1

    return-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    :goto_1
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    sub-float v2, p1, v11

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v10, v2, v3

    const v2, 0x3ecccccd    # 0.4f

    mul-float v9, v10, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v8, v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v7, v8, v2

    const v2, 0x3d9374bc    # 0.072f

    mul-float v6, p2, v2

    const/16 v5, 0x14

    const/16 v4, 0x14

    const/16 v3, 0xf

    const/4 v2, 0x1

    move/from16 p2, v1

    move v12, v11

    move v13, v1

    move v14, v1

    move v11, v10

    move v1, v2

    move v10, v9

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_0

    :cond_2
    move/from16 v1, p2

    goto :goto_1
.end method

.method private b(Landroid/content/Context;II)V
    .locals 17

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/if;->i()Z

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v1

    iget v1, v1, Lcom/tnkfactory/ad/hz;->H:F

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v1}, Lcom/tnkfactory/ad/jc;->b(FFF)[I

    move-result-object v4

    const/16 v1, 0xd

    aget v5, v4, v1

    const/16 v1, 0xe

    aget v6, v4, v1

    const/16 v1, 0xf

    aget v7, v4, v1

    const/16 v1, 0x10

    aget v8, v4, v1

    const/4 v1, 0x0

    aget v1, v4, v1

    const/16 v2, 0x11

    aget v2, v4, v2

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/jc;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    aget v1, v4, v1

    const/4 v9, 0x2

    aget v9, v4, v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xa

    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x5

    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v10, v9}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    int-to-float v1, v1

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v11

    float-to-int v1, v1

    invoke-direct {v9, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const/4 v10, 0x6

    invoke-virtual {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-static {v0, v9, v1}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget-object v9, Lcom/tnkfactory/ad/jc;->c:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tnkfactory/ad/jc;->d:I

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x3

    const/16 v10, 0xd

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    const/16 v9, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tnkfactory/ad/jc;->e:I

    invoke-static {v11}, Lcom/tnkfactory/ad/bj;->c(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, v9}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x4

    aget v9, v4, v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0xe

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x3

    const/16 v13, 0xe

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v12, 0xf

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x5

    aget v12, v4, v1

    const/4 v1, 0x6

    aget v13, v4, v1

    int-to-float v1, v12

    const v14, 0x3f88f5c3    # 1.07f

    mul-float/2addr v1, v14

    float-to-int v1, v1

    int-to-float v14, v13

    const v15, 0x3f88f5c3    # 1.07f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    const/4 v14, 0x6

    invoke-virtual {v15, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    int-to-float v1, v9

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v1, v14

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xe

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x12

    move-object/from16 v0, p1

    invoke-static {v0, v15, v1}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget-object v14, Lcom/tnkfactory/ad/jc;->c:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tnkfactory/ad/jc;->d:I

    aget v14, v14, v15

    int-to-float v15, v12

    const v16, 0x3e6147ae    # 0.22f

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tnkfactory/ad/jc;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v12}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    int-to-float v1, v9

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v1

    :goto_3
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLines(I)V

    const/16 v9, 0x11

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v9, Lcom/tnkfactory/ad/jc;->a:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tnkfactory/ad/jc;->e:I

    aget v9, v9, v12

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x1

    int-to-float v6, v6

    invoke-virtual {v1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    if-ne v8, v2, :cond_6

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const v2, -0x79797a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    int-to-float v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x7

    aget v1, v4, v1

    const/16 v2, 0x8

    aget v2, v4, v2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x2

    if-ne v8, v1, :cond_0

    int-to-float v1, v2

    const v7, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v1}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    div-int/lit8 v9, v2, 0x2

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0x1e

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/tnkfactory/ad/ft;->l(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/jc;->d:I

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/tnkfactory/ad/bj;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x1

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x3

    const/16 v9, 0x1e

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/tnkfactory/ad/ft;->l(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/jc;->d:I

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/tnkfactory/ad/bj;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/tnkfactory/ad/ft;->k(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    move-object/from16 v0, p1

    invoke-static {v0, v1, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLines(I)V

    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v7, -0xdcdcdd

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v10, 0x40400000    # 3.0f

    sget-object v12, Lcom/tnkfactory/ad/jc;->b:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tnkfactory/ad/jc;->d:I

    aget v12, v12, v13

    invoke-virtual {v1, v7, v9, v10, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v7, 0x1

    int-to-float v5, v5

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    int-to-float v1, v2

    const v5, 0x3e8f5c29    # 0.28f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    div-int/lit8 v1, v1, 0x2

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v5, v1}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tnkfactory/ad/jc;->d:I

    invoke-static {v5}, Lcom/tnkfactory/ad/bj;->d(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    int-to-float v1, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v5, v1

    const/high16 v6, 0x42e40000    # 114.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x41c00000    # 24.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    const/4 v5, 0x4

    invoke-virtual {v6, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xe

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Lcom/tnkfactory/ad/bj;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_7

    int-to-float v1, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    :goto_5
    float-to-int v2, v1

    int-to-float v1, v2

    const v3, 0x3e23d70a    # 0.16f

    mul-float/2addr v1, v3

    float-to-int v3, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x13

    move-object/from16 v0, p1

    invoke-static {v0, v1, v5}, Lcom/tnkfactory/ad/ft;->k(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    :goto_6
    const/4 v6, 0x5

    if-ge v1, v6, :cond_8

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    if-ge v1, v7, :cond_1

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_1
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v8, v1, 0x14

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tnkfactory/ad/jc;->d:I

    invoke-static {v6, v1}, Lcom/tnkfactory/ad/bj;->a(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, v1

    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/4 v10, -0x1

    invoke-direct {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    const/4 v10, 0x6

    invoke-virtual {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-static {v0, v9, v1}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget-object v9, Lcom/tnkfactory/ad/jc;->c:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tnkfactory/ad/jc;->d:I

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x1

    const/16 v10, 0xd

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    :cond_4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    int-to-float v1, v13

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x12

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/jc;->c:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tnkfactory/ad/jc;->d:I

    aget v2, v2, v14

    int-to-float v14, v12

    const v15, 0x3e6147ae    # 0.22f

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/tnkfactory/ad/jc;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_5
    int-to-float v1, v9

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x3

    const/16 v12, 0x12

    invoke-virtual {v1, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_3

    :cond_6
    const/4 v2, 0x3

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_7
    int-to-float v1, v2

    const v2, 0x3eae147b    # 0.34f

    mul-float/2addr v1, v2

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tnkfactory/ad/jc;->setupConnerButtons([I)V

    return-void
.end method

.method private b(FFF)[I
    .locals 18

    const/16 v1, 0x14

    new-array v15, v1, [I

    cmpl-float v1, p2, p1

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x41800000    # 16.0f

    div-float p1, v1, v2

    :cond_0
    const/high16 v10, -0x40800000    # -1.0f

    const v1, 0x3f0f5c29    # 0.56f

    mul-float v9, p1, v1

    const v1, 0x3e6b851f    # 0.23f

    mul-float v8, p1, v1

    sub-float v1, p2, p1

    const v2, 0x3f570a3d    # 0.84f

    mul-float v7, v1, v2

    const v1, 0x3f333333    # 0.7f

    mul-float v6, v8, v1

    const v1, 0x3d1374bc    # 0.036f

    mul-float v5, p2, v1

    const/16 v4, 0x14

    const/16 v3, 0x16

    const/16 v2, 0x10

    const/4 v1, 0x2

    move v11, v9

    move v12, v10

    move/from16 v13, p1

    move/from16 v14, p1

    move v10, v8

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    :goto_0
    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v17, v17, p2

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v13, v13, v17

    float-to-int v13, v13

    aput v13, v15, v16

    const/4 v13, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v16, v16, p1

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    aput v16, v15, v13

    const/4 v13, 0x3

    float-to-int v12, v12

    aput v12, v15, v13

    const/4 v12, 0x4

    float-to-int v11, v11

    aput v11, v15, v12

    const/4 v11, 0x5

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v15, v11

    const/4 v10, 0x6

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    aput v9, v15, v10

    const/4 v9, 0x7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v15, v9

    const/16 v8, 0x8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    aput v7, v15, v8

    const/16 v7, 0x9

    const v8, 0x3eaa7efa    # 0.333f

    mul-float/2addr v8, v6

    float-to-int v8, v8

    aput v8, v15, v7

    const/16 v7, 0xa

    const v8, 0x3f956042    # 1.167f

    mul-float/2addr v8, v6

    float-to-int v8, v8

    aput v8, v15, v7

    const/16 v7, 0xb

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v15, v7

    const/16 v6, 0xc

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v15, v6

    const/16 v5, 0xd

    aput v4, v15, v5

    const/16 v4, 0xe

    aput v3, v15, v4

    const/16 v3, 0xf

    aput v2, v15, v3

    const/16 v2, 0x10

    aput v1, v15, v2

    const/16 v1, 0x11

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v15, v1

    return-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    :goto_1
    sub-float v2, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v10, v2, v3

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v9, v1, v2

    const v2, 0x3f2b851f    # 0.67f

    mul-float v8, v1, v2

    const v2, 0x3f1eb852    # 0.62f

    mul-float v7, v9, v2

    const v2, 0x3d9374bc    # 0.072f

    mul-float v6, p2, v2

    const/16 v5, 0x14

    const/16 v4, 0x16

    const/16 v3, 0x10

    const/4 v2, 0x1

    move v11, v10

    move v12, v1

    move v13, v1

    move/from16 v14, p1

    move/from16 p2, v1

    move v10, v9

    move/from16 p1, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_0

    :cond_2
    move/from16 v1, p2

    goto :goto_1
.end method

.method private setupConnerButtons([I)V
    .locals 11

    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/16 v7, 0xa

    aget v0, p1, v9

    aget v1, p1, v7

    aget v2, p1, v10

    const/16 v3, 0xc

    aget v3, p1, v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v5, v0, v2

    add-int/2addr v5, v1

    add-int v6, v0, v3

    add-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    const/4 v6, 0x7

    invoke-static {v5, v4, v6}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, v0, v0, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Lcom/tnkfactory/ad/jc;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v5, v3}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v1, v0, v0, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/jc;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public getCloseButton()Landroid/widget/ImageButton;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getGoButton()Landroid/view/View;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReplayButton()Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public parentLayout()Lcom/tnkfactory/ad/AdLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeFromParent()V
    .locals 1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/jc;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setGoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tnkfactory/ad/a/e;

    iget-object v2, p0, Lcom/tnkfactory/ad/jc;->i:Landroid/content/Context;

    const v3, 0x3e428f5c    # 0.19f

    invoke-direct {v1, v2, p1, v3}, Lcom/tnkfactory/ad/a/e;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setStarRateImage(I)V
    .locals 7

    const/16 v1, 0x19

    const/4 v6, 0x5

    const/4 v0, 0x0

    if-gez p1, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    div-int/lit8 v2, p1, 0x5

    rem-int/lit8 v3, p1, 0x5

    iget v1, p0, Lcom/tnkfactory/ad/jc;->d:I

    invoke-static {v1, v6}, Lcom/tnkfactory/ad/bj;->a(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v1, p0, Lcom/tnkfactory/ad/jc;->d:I

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/bj;->a(II)Landroid/graphics/Bitmap;

    move-result-object v5

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    add-int/lit8 v0, v1, 0x14

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_3
    if-ge v2, v6, :cond_4

    add-int/lit8 v0, v2, 0x14

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/tnkfactory/ad/jc;->d:I

    invoke-static {v1, v3}, Lcom/tnkfactory/ad/bj;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_6

    add-int/lit8 v0, v1, 0x14

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jc;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
