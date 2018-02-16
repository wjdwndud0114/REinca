.class public Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;
.super Ljava/lang/Object;
.source "CPEProgressBarHandler.java"


# static fields
.field private static popupToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static makeToastPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 42
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupTitle"    # Ljava/lang/String;
    .param p2, "popupMessage"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "current"    # I
    .param p5, "duration"    # I

    .prologue
    .line 36
    const-string v36, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 37
    .local v16, "display":Landroid/view/Display;
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v35

    .line 38
    .local v35, "width":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getHeight()I

    move-result v20

    .line 41
    .local v20, "height":I
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_width:I

    move/from16 v36, v0

    if-nez v36, :cond_4

    .line 42
    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0x3fe999999999999aL    # 0.8

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v13, v0

    .line 45
    .local v13, "custom_width":I
    :goto_0
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionX:I

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 46
    const/4 v14, 0x0

    .line 49
    .local v14, "custom_x":I
    :goto_1
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionY:I

    move/from16 v36, v0

    if-nez v36, :cond_6

    .line 50
    const/16 v15, 0x1e

    .line 53
    .local v15, "custom_y":I
    :goto_2
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->alpha:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 54
    const/16 v9, 0x32

    .line 58
    .local v9, "alpha":I
    :goto_3
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_duration:I

    move/from16 v36, v0

    if-nez v36, :cond_8

    .line 59
    move/from16 v32, p5

    .line 65
    .local v32, "toast_duration":I
    :cond_0
    :goto_4
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->title_gravity:I

    move/from16 v36, v0

    if-nez v36, :cond_9

    .line 66
    const/16 v29, 0x3

    .line 70
    .local v29, "title_gravity":I
    :goto_5
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->popup_message_height:I

    move/from16 v36, v0

    if-nez v36, :cond_a

    .line 71
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0x3fc3333333333333L    # 0.15

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v21, v0

    .line 77
    .local v21, "message_height":I
    :goto_6
    new-instance v18, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78
    .local v18, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/16 v36, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 79
    const/high16 v36, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 81
    const/16 v36, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 82
    const/high16 v36, 0x40a00000    # 5.0f

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 85
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v30, "toastLayout":Landroid/widget/LinearLayout;
    const/16 v36, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v31, "toastParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const/16 v36, 0x5

    const/16 v37, 0x5

    const/16 v38, 0x5

    const/16 v39, 0x5

    move-object/from16 v0, v30

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 91
    .local v19, "gd_toastLayout":Landroid/graphics/drawable/GradientDrawable;
    const/16 v36, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 92
    const/high16 v36, -0x1000000

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    const/16 v36, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 94
    const/16 v36, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 95
    const/high16 v36, 0x40a00000    # 5.0f

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 96
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_1

    const-string v36, "null"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    .line 100
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v25, "titleLayer":Landroid/widget/LinearLayout;
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v26, "titleLayerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v36, 0x3

    const/16 v37, 0x3

    const/16 v38, 0x3

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 104
    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v27, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v28, "titleView":Landroid/widget/TextView;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/16 v36, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    or-int/lit8 v36, v29, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    const/16 v36, 0x5

    const/16 v37, 0x3

    const/16 v38, 0x5

    const/16 v39, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v11, "border":Landroid/widget/ImageView;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-direct {v12, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v12, "borderParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const v36, -0x777778

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 120
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    .end local v11    # "border":Landroid/widget/ImageView;
    .end local v12    # "borderParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "titleLayer":Landroid/widget/LinearLayout;
    .end local v26    # "titleLayerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v27    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "titleView":Landroid/widget/TextView;
    :cond_1
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v6, "FirstLayer":Landroid/widget/LinearLayout;
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v17, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v36, 0x3

    const/16 v37, 0x3

    const/16 v38, 0x3

    const/16 v39, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 129
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v8, "ToastMessage":Landroid/widget/TextView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x1

    const/16 v37, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v22, "msgParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const/16 v36, 0x33

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const/16 v36, 0xa

    const/16 v37, 0xa

    const/16 v38, 0xa

    const/16 v39, 0xa

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    const/16 v36, -0x1

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    const/16 v36, 0x1

    move/from16 v0, p3

    move/from16 v1, v36

    if-le v0, v1, :cond_2

    .line 145
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v7, "SecondLayer":Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v24, "secondParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/16 v36, 0x0

    const/16 v37, 0x7

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 149
    new-instance v23, Landroid/widget/ProgressBar;

    const/16 v36, 0x0

    const v37, 0x1010078

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    .local v23, "pBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v23 .. v24}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v10, Lcom/igaworks/core/IgawConstant;

    invoke-direct {v10}, Lcom/igaworks/core/IgawConstant;-><init>()V

    .line 160
    .local v10, "atc":Lcom/igaworks/core/IgawConstant;
    new-instance v34, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v34, "tvParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v33, Landroid/widget/TextView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v33, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/16 v36, 0x0

    const/16 v37, 0x3

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    const/high16 v36, -0x1000000

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/igaworks/core/IgawConstant;->process:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    mul-int/lit8 v37, p4, 0x64

    div-int v37, v37, p3

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " %"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v10, Lcom/igaworks/core/IgawConstant;->complete:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/16 v36, 0x5

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    .end local v7    # "SecondLayer":Landroid/widget/LinearLayout;
    .end local v10    # "atc":Lcom/igaworks/core/IgawConstant;
    .end local v23    # "pBar":Landroid/widget/ProgressBar;
    .end local v24    # "secondParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "tv":Landroid/widget/TextView;
    .end local v34    # "tvParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    sget-object v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    if-nez v36, :cond_3

    .line 171
    new-instance v36, Landroid/widget/Toast;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    .line 172
    sget-object v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    const/16 v37, 0x50

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v1, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    .line 174
    :cond_3
    sget-object v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 175
    sget-object v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;

    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    .line 177
    new-instance v36, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler$1;

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x64

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    move-wide/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler$1;-><init>(JJ)V

    .line 183
    invoke-virtual/range {v36 .. v36}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler$1;->start()Landroid/os/CountDownTimer;

    .line 184
    return-void

    .line 44
    .end local v6    # "FirstLayer":Landroid/widget/LinearLayout;
    .end local v8    # "ToastMessage":Landroid/widget/TextView;
    .end local v9    # "alpha":I
    .end local v13    # "custom_width":I
    .end local v14    # "custom_x":I
    .end local v15    # "custom_y":I
    .end local v17    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v19    # "gd_toastLayout":Landroid/graphics/drawable/GradientDrawable;
    .end local v21    # "message_height":I
    .end local v22    # "msgParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "title_gravity":I
    .end local v30    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v31    # "toastParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "toast_duration":I
    :cond_4
    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    sget-object v38, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_width:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3f847ae147ae147bL    # 0.01

    mul-double v38, v38, v40

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v13, v0

    .restart local v13    # "custom_width":I
    goto/16 :goto_0

    .line 48
    :cond_5
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v14, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionX:I

    .restart local v14    # "custom_x":I
    goto/16 :goto_1

    .line 52
    :cond_6
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v15, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionY:I

    .restart local v15    # "custom_y":I
    goto/16 :goto_2

    .line 56
    :cond_7
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v9, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->alpha:I

    .restart local v9    # "alpha":I
    goto/16 :goto_3

    .line 61
    :cond_8
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_duration:I

    move/from16 v36, v0

    move/from16 v0, v36

    add-int/lit16 v0, v0, -0xbb8

    move/from16 v32, v0

    .line 62
    .restart local v32    # "toast_duration":I
    if-gtz v32, :cond_0

    .line 63
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 68
    :cond_9
    sget-object v36, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->title_gravity:I

    move/from16 v29, v0

    .restart local v29    # "title_gravity":I
    goto/16 :goto_5

    .line 73
    :cond_a
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    sget-object v38, Lcom/igaworks/util/IgawStyler;->toastPopup:Lcom/igaworks/util/IgawStyler$ToastStyle;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/igaworks/util/IgawStyler$ToastStyle;->popup_message_height:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3f847ae147ae147bL    # 0.01

    mul-double v38, v38, v40

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v21, v0

    .restart local v21    # "message_height":I
    goto/16 :goto_6
.end method

.method public static setNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method
