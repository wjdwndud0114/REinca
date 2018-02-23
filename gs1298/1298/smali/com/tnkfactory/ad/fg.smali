.class Lcom/tnkfactory/ad/fg;
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
.method constructor <init>(Landroid/content/Context;IIII)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/fg;->k:Landroid/graphics/Bitmap;

    and-int/lit8 v5, p4, 0x3

    shr-int/lit8 v0, p4, 0x2

    and-int/lit8 v0, v0, 0x3

    shr-int/lit8 v1, p4, 0x4

    and-int/lit8 v6, v1, 0xf

    shr-int/lit8 v1, p4, 0x8

    and-int/lit8 v7, v1, 0x1

    if-nez v5, :cond_1

    invoke-direct {p0, p3, p2}, Lcom/tnkfactory/ad/fg;->b(II)[I

    move-result-object v4

    :goto_0
    invoke-virtual {p0, p5}, Lcom/tnkfactory/ad/fg;->setId(I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/tnkfactory/ad/fg;->a(Landroid/content/Context;II[IIII)V

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->enableBackPressClose:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fg;->f:Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq v5, v1, :cond_2

    const/4 v1, 0x2

    if-ne v5, v1, :cond_0

    :cond_2
    invoke-direct {p0, p3, p2, v0, v7}, Lcom/tnkfactory/ad/fg;->a(IIII)[I

    move-result-object v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;III)Lcom/tnkfactory/ad/fg;
    .locals 7

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/fg;

    const/16 v5, 0x63

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/fg;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/fg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/fh;

    invoke-direct {v1}, Lcom/tnkfactory/ad/fh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fg;->a(II)V

    return-object v0
.end method

.method private a(Landroid/content/Context;II[IIII)V
    .locals 24

    const/high16 v2, -0x60000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/fg;->setBackgroundColor(I)V

    const/4 v2, 0x0

    aget v7, p4, v2

    const/4 v2, 0x1

    aget v8, p4, v2

    const/4 v2, 0x2

    aget v9, p4, v2

    const/4 v2, 0x3

    aget v10, p4, v2

    const/4 v2, 0x4

    aget v11, p4, v2

    const/4 v2, 0x5

    aget v12, p4, v2

    const/4 v2, 0x6

    aget v13, p4, v2

    const/4 v2, 0x7

    aget v14, p4, v2

    const/16 v2, 0x8

    aget v15, p4, v2

    const/16 v2, 0x9

    aget v16, p4, v2

    const/16 v2, 0xa

    aget v17, p4, v2

    const/16 v2, 0xb

    aget v18, p4, v2

    const/16 v2, 0xc

    aget v19, p4, v2

    const/4 v2, 0x1

    if-le v7, v8, :cond_12

    const/4 v2, 0x2

    move v6, v2

    :goto_0
    const/4 v3, -0x1

    const v2, -0x7f7f80

    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_5

    const/high16 v3, -0x1000000

    const/4 v2, -0x1

    :cond_0
    :goto_1
    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v4, 0x41c00000    # 24.0f

    :cond_1
    :goto_2
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v5

    iget-object v5, v5, Lcom/tnkfactory/ad/ha;->az:Ljava/lang/String;

    sget-object v21, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    sget-object v5, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v5, v5, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    :cond_2
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x1

    move/from16 v0, p7

    if-ne v0, v11, :cond_7

    const/16 v11, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0xe

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    new-instance v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tnkfactory/ad/fg;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0xd

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v12, v1}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v12

    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    invoke-virtual {v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v11, Lcom/tnkfactory/ad/fi;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/tnkfactory/ad/fi;-><init>(Lcom/tnkfactory/ad/fg;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setGravity(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tnkfactory/ad/fg;->c(II)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v4}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v12, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v12, v12, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    if-eqz v12, :cond_8

    sget-object v12, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v12, v12, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v12, v13, v14, v0}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/tnkfactory/ad/fg;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v13, 0x2

    if-ne v6, v13, :cond_9

    const/4 v13, 0x1

    move/from16 v0, p5

    if-eq v0, v13, :cond_3

    const/4 v13, 0x2

    move/from16 v0, p5

    if-ne v0, v13, :cond_9

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_5
    const/4 v13, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v12

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setGravity(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tnkfactory/ad/fg;->c(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v2, v13, v14, v0}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/tnkfactory/ad/fg;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    if-eqz v2, :cond_c

    new-instance v2, Lcom/tnkfactory/ad/fj;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tnkfactory/ad/fj;-><init>(Lcom/tnkfactory/ad/fg;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->exitButtonUseForLanding:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_10

    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_e

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move/from16 v0, v18

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_8
    return-void

    :cond_5
    const/4 v4, 0x2

    move/from16 v0, p6

    if-ne v0, v4, :cond_0

    const/high16 v3, -0x1000000

    const v2, -0x7f7f80

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x2

    if-ne v6, v5, :cond_1

    const/high16 v4, 0x41700000    # 15.0f

    goto/16 :goto_2

    :cond_7
    const/16 v11, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v12

    iget-object v12, v12, Lcom/tnkfactory/ad/ha;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->d:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_b
    new-instance v2, Lcom/tnkfactory/ad/fk;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tnkfactory/ad/fk;-><init>(Lcom/tnkfactory/ad/fg;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_c
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->exitButtonUseForLanding:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    new-instance v2, Lcom/tnkfactory/ad/fm;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tnkfactory/ad/fm;-><init>(Lcom/tnkfactory/ad/fg;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_d
    new-instance v2, Lcom/tnkfactory/ad/fl;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tnkfactory/ad/fl;-><init>(Lcom/tnkfactory/ad/fg;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_e
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_f

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_f
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_10
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    :cond_11
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_12
    move v6, v2

    goto/16 :goto_0
.end method

.method private a(IIII)[I
    .locals 18

    const/16 v2, 0xd

    new-array v15, v2, [I

    const/4 v4, 0x0

    const-string v2, "tnkad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v2, v0

    div-float v3, v2, v7

    const v5, 0x3f1aaaab

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    const v2, 0x3f1aaaab

    mul-float/2addr v2, v7

    :cond_0
    const v3, 0x3ee0b957

    mul-float/2addr v3, v7

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v3, v5

    const v3, 0x3d97b426

    mul-float/2addr v3, v2

    const v5, 0x3f0fdf3b    # 0.562f

    mul-float v8, v7, v5

    const v5, 0x3f10cbe0

    mul-float/2addr v5, v7

    move v9, v2

    move v10, v7

    move v11, v8

    move v12, v7

    move v13, v2

    move v14, v7

    move v7, v3

    move v8, v6

    move v2, v4

    move v4, v5

    move v5, v3

    :goto_0
    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v12, v12, v17

    float-to-int v12, v12

    aput v12, v15, v16

    const/4 v12, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    aput v11, v15, v12

    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v15, v11

    const/4 v10, 0x3

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    aput v9, v15, v10

    const/4 v9, 0x4

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v14

    float-to-int v10, v10

    aput v10, v15, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    aput v10, v15, v9

    const/4 v9, 0x6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v15, v9

    const/4 v8, 0x7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    aput v7, v15, v8

    const/16 v7, 0x8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v15, v7

    const/16 v6, 0x9

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v15, v6

    const/16 v5, 0xa

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v15, v5

    const/16 v4, 0xb

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v15, v4

    const/16 v3, 0xc

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v15, v3

    return-object v15

    :cond_1
    move/from16 v0, p2

    int-to-float v2, v0

    const v3, 0x3f75c28f    # 0.96f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v2

    move/from16 v0, p1

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    move/from16 v0, p1

    int-to-float v2, v0

    const v3, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float v2, v3, v2

    :cond_2
    const v5, 0x3f6ac083    # 0.917f

    mul-float v11, v3, v5

    const v5, 0x3f1020c5    # 0.563f

    mul-float v10, v11, v5

    const v5, 0x3f6ac083    # 0.917f

    mul-float v9, v3, v5

    const v5, 0x3f26e979    # 0.652f

    mul-float v8, v9, v5

    const v5, 0x3f10cbe0

    mul-float v6, v9, v5

    const v5, 0x3da9fbe7    # 0.083f

    mul-float/2addr v5, v3

    const v7, 0x3edd3fb6

    mul-float/2addr v7, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v7, v12

    move v12, v11

    move v13, v2

    move v14, v3

    move v11, v10

    move v2, v4

    move v3, v5

    move v10, v9

    move v4, v6

    move v6, v7

    move v9, v8

    move v8, v7

    move v7, v5

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v7, v0

    div-float v2, v4, v7

    const v3, 0x3f20f16a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const v2, 0x3f164fda

    mul-float v4, v7, v2

    :cond_4
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v6, v4, v2

    const v2, 0x3d8cd33d

    mul-float v5, v7, v2

    const v2, 0x3d716a1f

    mul-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, v2, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v8, v4, v2

    sub-float v2, v7, v5

    sub-float/2addr v2, v3

    cmpg-float v2, v8, v2

    if-gez v2, :cond_5

    sub-float v2, v7, v5

    sub-float v8, v2, v3

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v5

    :goto_1
    move v9, v7

    move v10, v4

    move v11, v8

    move v12, v4

    move v13, v7

    move v14, v4

    move v7, v5

    move v8, v6

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v10, v2, v3

    const/high16 v2, 0x3fc80000    # 1.5625f

    mul-float v9, v10, v2

    move/from16 v0, p2

    int-to-float v2, v0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_8

    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v9, v2, v3

    const v2, 0x3f23d70a    # 0.64f

    mul-float v10, v9, v2

    :cond_8
    const/high16 v2, 0x3f600000    # 0.875f

    mul-float v4, v10, v2

    const v2, 0x3fde353f    # 1.736f

    mul-float v7, v4, v2

    const v2, 0x3fc147ae    # 1.51f

    mul-float v8, v4, v2

    const v2, 0x3db851ec    # 0.09f

    mul-float v3, v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v6, v4, v2

    const v2, 0x3df1a9fc    # 0.118f

    mul-float v5, v10, v2

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    const v2, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v5

    :goto_2
    move v11, v8

    move v12, v4

    move v13, v9

    move v14, v10

    move v8, v6

    move v9, v7

    move v10, v4

    move v7, v5

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private b(II)[I
    .locals 13

    const v5, 0x3f6ac083    # 0.917f

    const/high16 v4, 0x3f600000    # 0.875f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v0, 0xd

    new-array v10, v0, [I

    if-le p1, p2, :cond_1

    int-to-float v0, p2

    mul-float v1, v0, v3

    int-to-float v2, p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    int-to-float v1, p1

    div-float v0, v1, v3

    :cond_0
    mul-float v7, v1, v5

    const v2, 0x3f0fdf3b    # 0.562f

    mul-float v6, v7, v2

    mul-float/2addr v5, v1

    const v2, 0x3f26e979    # 0.652f

    mul-float v4, v5, v2

    mul-float v3, v7, v11

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v1

    move v8, v0

    move v9, v1

    move v0, v2

    move v1, v3

    :goto_0
    add-float/2addr v7, v11

    float-to-int v7, v7

    aput v7, v10, v12

    const/4 v7, 0x1

    add-float/2addr v6, v11

    float-to-int v6, v6

    aput v6, v10, v7

    const/4 v6, 0x2

    add-float/2addr v5, v11

    float-to-int v5, v5

    aput v5, v10, v6

    const/4 v5, 0x3

    add-float/2addr v4, v11

    float-to-int v4, v4

    aput v4, v10, v5

    const/4 v4, 0x4

    add-float v5, v9, v11

    float-to-int v5, v5

    aput v5, v10, v4

    const/4 v4, 0x5

    add-float v5, v8, v11

    float-to-int v5, v5

    aput v5, v10, v4

    const/4 v4, 0x6

    add-float/2addr v3, v11

    float-to-int v3, v3

    aput v3, v10, v4

    const/4 v3, 0x7

    add-float/2addr v2, v11

    float-to-int v2, v2

    aput v2, v10, v3

    const/16 v2, 0x8

    add-float/2addr v1, v11

    float-to-int v1, v1

    aput v1, v10, v2

    const/16 v1, 0x9

    add-float/2addr v0, v11

    float-to-int v0, v0

    aput v0, v10, v1

    const/16 v0, 0xa

    aput v12, v10, v0

    const/16 v0, 0xb

    aput v12, v10, v0

    const/16 v0, 0xc

    aput v12, v10, v0

    return-object v10

    :cond_1
    int-to-float v1, p1

    mul-float v0, v1, v3

    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    int-to-float v0, p2

    const v1, 0x3f2aacda    # 0.6667f

    mul-float/2addr v1, v0

    :cond_2
    mul-float v7, v1, v4

    const v2, 0x3fc020c5    # 1.501f

    mul-float v6, v7, v2

    mul-float v5, v1, v4

    const v2, 0x3fd24dd3    # 1.643f

    mul-float v4, v5, v2

    mul-float v3, v7, v11

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v1

    move v8, v0

    move v9, v1

    move v0, v2

    move v1, v3

    goto :goto_0
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

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xffffff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tnkfactory/ad/j;->a()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fg;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/fg;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/fg;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/fg;->k:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fg;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object p1, p0, Lcom/tnkfactory/ad/fg;->k:Landroid/graphics/Bitmap;

    return-void
.end method
