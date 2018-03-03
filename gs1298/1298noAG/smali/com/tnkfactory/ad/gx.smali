.class Lcom/tnkfactory/ad/gx;
.super Lcom/tnkfactory/ad/j;


# instance fields
.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/gx;->k:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/gx;->l:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3, p2}, Lcom/tnkfactory/ad/gx;->b(II)[I

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/tnkfactory/ad/gx;->setId(I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tnkfactory/ad/gx;->a(Landroid/content/Context;II[I)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lcom/tnkfactory/ad/gx;
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/tnkfactory/ad/gx;

    const/16 v2, 0x63

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/tnkfactory/ad/gx;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tnkfactory/ad/gy;

    invoke-direct {v0}, Lcom/tnkfactory/ad/gy;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1, p2}, Lcom/tnkfactory/ad/gx;->a(II)V

    return-object v1
.end method

.method private a(Landroid/content/Context;II[I)V
    .locals 32

    const/high16 v5, -0x60000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tnkfactory/ad/gx;->setBackgroundColor(I)V

    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v5, 0x1

    aget v9, p4, v5

    const/4 v5, 0x2

    aget v10, p4, v5

    const/4 v5, 0x3

    aget v11, p4, v5

    const/4 v5, 0x4

    aget v12, p4, v5

    const/4 v5, 0x5

    aget v13, p4, v5

    const/4 v5, 0x6

    aget v14, p4, v5

    const/4 v5, 0x7

    aget v15, p4, v5

    const/16 v5, 0x8

    aget v16, p4, v5

    const/16 v5, 0x9

    aget v17, p4, v5

    const/16 v5, 0xa

    aget v18, p4, v5

    const/16 v5, 0xb

    aget v19, p4, v5

    const/16 v5, 0xc

    aget v20, p4, v5

    const/16 v5, 0xd

    aget v21, p4, v5

    const/16 v5, 0xe

    aget v22, p4, v5

    const/16 v5, 0xf

    aget v23, p4, v5

    const/16 v5, 0x10

    aget v24, p4, v5

    const/16 v5, 0x11

    aget v25, p4, v5

    const/4 v5, 0x1

    if-le v10, v11, :cond_0

    const/4 v5, 0x2

    :cond_0
    const/16 v26, -0x1

    const v27, -0x7f7f80

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v6, :sswitch_data_0

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v6, 0x41a00000    # 20.0f

    :cond_1
    :goto_0
    const-string v8, ""

    sget-object v28, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->ppiTitleLabel:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    sget-object v8, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->ppiTitleLabel:Ljava/lang/String;

    :cond_2
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tnkfactory/ad/gx;->addView(Landroid/view/View;)V

    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v28

    invoke-direct {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/16 v29, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v28, 0xd

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v28, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v10, v1}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v10

    sget-object v28, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v28, 0xd

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v28, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v10, v22, v24

    add-int v10, v10, v25

    add-int v23, v23, v24

    add-int v23, v23, v25

    move/from16 v0, v23

    invoke-direct {v9, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v10, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Z)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v29, 0x3f400000    # 0.75f

    mul-float v23, v23, v29

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v29, 0x1

    const/high16 v30, 0x41100000    # 9.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v9, v10, v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v9, v10}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v9

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/tnkfactory/ad/gz;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/tnkfactory/ad/gz;-><init>(Lcom/tnkfactory/ad/gx;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v10, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v10, 0x1

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v9, v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v23

    if-lt v10, v0, :cond_5

    const/4 v10, 0x0

    const v23, -0xbbbbbc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/tnkfactory/ad/gx;->c(II)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v10, v1}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v18

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setGravity(I)V

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/tnkfactory/ad/gx;->c(II)Landroid/content/res/ColorStateList;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    const/16 v5, 0xe

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v5, v9, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Z)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v9, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v9}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v14, v9, v14, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x31

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v16

    invoke-direct {v5, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v7, v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v7, 0x1

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v7, 0x13

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v7, -0x3f3f40

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_3
    return-void

    :sswitch_0
    const/high16 v7, 0x41580000    # 13.5f

    const/high16 v6, 0x41480000    # 12.5f

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v7, 0x41a80000    # 21.0f

    const/high16 v6, 0x41900000    # 18.0f

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    const/high16 v7, 0x41500000    # 13.0f

    const v6, 0x413e6666    # 11.9f

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    const/high16 v7, 0x418c0000    # 17.5f

    const/high16 v6, 0x41700000    # 15.0f

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0xb

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v5, v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0xe

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x0

    sub-int v10, p2, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    int-to-float v11, v13

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v9, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v9}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v22

    move/from16 v1, v22

    invoke-virtual {v5, v0, v9, v1, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v16

    invoke-direct {v5, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x6

    const/16 v8, 0xa

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v7, 0x1

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v7, 0x13

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v7, -0x3f3f40

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(II)[I
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/gx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x12

    new-array v0, v3, [I

    move-object/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    const/high16 v3, 0x45390000    # 2960.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float v2, v3, v2

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v3, v2

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v3, v4, v3

    const v4, 0x44d48000    # 1700.0f

    div-float v2, v4, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f0ff972    # 0.5624f

    mul-float/2addr v3, v2

    const v4, 0x3f89999a    # 1.075f

    mul-float v11, v2, v4

    const v4, 0x3f0ff972    # 0.5624f

    mul-float v12, v11, v4

    move/from16 v0, p2

    int-to-float v4, v0

    const v5, 0x3da3d70a    # 0.08f

    mul-float v10, v4, v5

    move/from16 v0, p1

    int-to-float v4, v0

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float v9, v4, v5

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v6, v2, v4

    const v4, 0x3eb33333    # 0.35f

    mul-float v5, v6, v4

    move/from16 v0, p1

    int-to-float v4, v0

    sub-float/2addr v4, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    const v7, 0x3d0f5c29    # 0.035f

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    move/from16 v0, p2

    int-to-float v7, v0

    sub-float v3, v7, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    sub-float/2addr v3, v7

    sub-float v8, v2, v6

    const/4 v7, 0x0

    move/from16 v0, p2

    int-to-float v2, v0

    const v13, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, v13

    move v13, v11

    move v14, v12

    move v15, v11

    move v11, v9

    move v12, v10

    move v9, v5

    move v10, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    const/16 v17, 0x0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, -0x1

    aput v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v15, v15, v18

    float-to-int v15, v15

    aput v15, v16, v17

    const/4 v15, 0x3

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v14, v14, v17

    float-to-int v14, v14

    aput v14, v16, v15

    const/4 v14, 0x4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v13, v15

    float-to-int v13, v13

    aput v13, v16, v14

    const/4 v13, 0x5

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v16, v13

    const/4 v12, 0x6

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    aput v11, v16, v12

    const/4 v11, 0x7

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v16, v11

    const/16 v10, 0x8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    aput v9, v16, v10

    const/16 v9, 0x9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v16, v9

    const/16 v8, 0xa

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    aput v7, v16, v8

    const/16 v7, 0xb

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v16, v7

    const/16 v6, 0xc

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v16, v6

    const/16 v5, 0xd

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v16, v5

    const/16 v4, 0xe

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v3

    float-to-int v5, v5

    aput v5, v16, v4

    const/16 v4, 0xf

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v16, v4

    const/16 v2, 0x10

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    aput v4, v16, v2

    const/16 v2, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v16, v2

    return-object v16

    :cond_0
    const/high16 v3, 0x45390000    # 2960.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v2, v3, v2

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v3, v2

    move/from16 v0, p1

    int-to-float v4, v0

    div-float v3, v4, v3

    const/high16 v4, 0x44d60000    # 1712.0f

    div-float v2, v4, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v13, v2

    const v2, 0x3f2aacda    # 0.6667f

    mul-float v9, v13, v2

    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v2, v0

    const v3, 0x3d79db23    # 0.061f

    mul-float v11, v2, v3

    move/from16 v0, p1

    int-to-float v2, v0

    sub-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v7, v2, v3

    move/from16 v0, p2

    int-to-float v2, v0

    const v3, 0x3d810625    # 0.063f

    mul-float v6, v2, v3

    const/4 v5, 0x0

    move/from16 v0, p2

    int-to-float v2, v0

    sub-float/2addr v2, v13

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    sub-float v4, v2, v3

    const v2, 0x3f733333    # 0.95f

    mul-float v8, v11, v2

    move/from16 v0, p2

    int-to-float v2, v0

    sub-float/2addr v2, v13

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v3, v11, v8

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    const v3, 0x3f5851ec    # 0.845f

    mul-float/2addr v2, v3

    :goto_1
    move/from16 v0, p1

    int-to-float v3, v0

    const v14, 0x3d8f5c29    # 0.07f

    mul-float/2addr v3, v14

    move v14, v13

    move v15, v9

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v2

    move v2, v3

    goto/16 :goto_0

    :cond_1
    const v3, 0x3f8147ae    # 1.01f

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    goto :goto_1
.end method

.method private c(II)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v4, [I

    aput-object v2, v1, v5

    new-array v2, v6, [I

    aput p2, v2, v4

    aput p1, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tnkfactory/ad/j;->a()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gx;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gx;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/gx;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/gx;->k:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/gx;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/gx;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/gx;->l:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gx;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gx;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iput-object p1, p0, Lcom/tnkfactory/ad/gx;->k:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/tnkfactory/ad/gx;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gx;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gx;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
