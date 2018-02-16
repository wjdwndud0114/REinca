.class public Lcom/igaworks/adpopcorn/activity/b/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:D

.field private b:D

.field private c:Landroid/content/Context;

.field private d:Lcom/igaworks/adpopcorn/cores/model/d;

.field private e:Lcom/igaworks/adpopcorn/cores/common/f;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Landroid/graphics/drawable/GradientDrawable;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/igaworks/adpopcorn/cores/model/d;Lcom/igaworks/adpopcorn/cores/common/f;Landroid/view/View$OnClickListener;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->l:Z

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/a;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iput-object p5, p0, Lcom/igaworks/adpopcorn/activity/b/a;->f:Landroid/view/View$OnClickListener;

    iput-boolean p6, p0, Lcom/igaworks/adpopcorn/activity/b/a;->l:Z

    return-void
.end method

.method private a(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4086800000000000L    # 720.0

    div-double/2addr v0, v2

    const-wide v2, 0x4077800000000000L    # 376.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 12

    const-wide/high16 v10, 0x403d000000000000L    # 29.0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "CAMPAIGN_DIALOG_REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "CAMPAIGN_DIALOG_TOP_LAYOUT_BG_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "CAMPAIGN_DIALOG_TOP_LAYOUT_BG_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v9

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v3, v0

    aput v3, v2, v6

    int-to-float v3, v0

    aput v3, v2, v9

    int-to-float v3, v0

    aput v3, v2, v8

    const/4 v3, 0x3

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v7, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    const/4 v3, 0x6

    aput v7, v2, v3

    const/4 v3, 0x7

    aput v7, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "CAMPAIGN_DIALOG_BOTTOM_LAYOUT_BG_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "CAMPAIGN_DIALOG_BOTTOM_LAYOUT_BG_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v9

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v7, v2, v6

    aput v7, v2, v9

    aput v7, v2, v8

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "CAMPAIGN_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "CAMPAIGN_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v9

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "CAMPAIGN_DIALOG_NEGATIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "CAMPAIGN_DIALOG_NEGATIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v9

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "CAMPAIGN_DIALOG_NEGATIVE_BTN_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private b()Landroid/view/View;
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->b()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->e()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->k()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v19

    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->l:Z

    if-eqz v2, :cond_5

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x408e700000000000L    # 974.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide v2, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v2, v4

    double-to-int v3, v2

    const-wide v4, 0x408e700000000000L    # 974.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    move v14, v2

    move v2, v3

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4065400000000000L    # 170.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Lcom/igaworks/adpopcorn/activity/c/f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v4}, Lcom/igaworks/adpopcorn/activity/c/f;-><init>(Landroid/content/Context;F)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v4, 0x4060400000000000L    # 130.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x4060400000000000L    # 130.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/activity/c/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v4, 0x4052800000000000L    # 74.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x4052800000000000L    # 74.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v4, 0x404a800000000000L    # 53.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x405b800000000000L    # 110.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static/range {v19 .. v19}, Lcom/igaworks/adpopcorn/cores/common/i;->b(I)I

    move-result v6

    invoke-static/range {v19 .. v19}, Lcom/igaworks/adpopcorn/cores/common/i;->a(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Lcom/igaworks/adpopcorn/cores/common/f;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide v8, 0x404b800000000000L    # 55.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v8, v10

    double-to-int v4, v8

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v4, 0x1

    const v7, -0xe0c0b

    invoke-virtual {v5, v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->l:Z

    if-eqz v2, :cond_6

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x408e700000000000L    # 974.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-wide v2, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igaworks/adpopcorn/activity/b/a;->a(I)I

    move-result v2

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->l:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->d:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :goto_2
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const-wide v6, 0x4065a00000000000L    # 173.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x30

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v4, 0x16

    const/4 v5, 0x0

    const-string v3, "#222c23"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    move-object/from16 v3, v18

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4061c00000000000L    # 142.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v3, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#ced4da"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x406f800000000000L    # 252.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x404d000000000000L    # 58.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->A:Ljava/lang/String;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "CAMPAIGN_DIALOG_POSITIVE_BTN_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x406f800000000000L    # 252.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x404d000000000000L    # 58.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->e:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "CAMPAIGN_DIALOG_NEGATIVE_BTN_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/a;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/a$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/a$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x10

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1a

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/ic_play.png"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_3
    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "CAMPAIGN_DIALOG_TITLE_TEXT_COLOR"

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

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/16 v4, 0x1c

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_9

    const/16 v4, 0x14

    :cond_2
    :goto_4
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "CAMPAIGN_DIALOG_REWARD_VIEW_TEXT_COLOR"

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

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/d;->b(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v5, v4

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    move-object v3, v15

    move-object/from16 v4, v22

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    return-object v20

    :cond_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide v2, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/b/a;->b:D

    mul-double/2addr v2, v4

    double-to-int v3, v2

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    move v14, v2

    move v2, v3

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/a;->a:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_2

    const/16 v4, 0x18

    goto/16 :goto_4
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/a;->c:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/a;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/a;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/a;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V

    return-void
.end method
