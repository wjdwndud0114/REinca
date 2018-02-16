.class public Lcom/igaworks/adpopcorn/activity/layout/c;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/igaworks/adpopcorn/cores/common/f;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/igaworks/adpopcorn/activity/a/a/b;

.field private n:Lcom/igaworks/adpopcorn/activity/a/a/b;

.field private o:Landroid/widget/ViewFlipper;

.field private p:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IDDZZLcom/igaworks/adpopcorn/cores/common/f;Landroid/view/View$OnClickListener;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    iput-wide p5, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->d:I

    iput-boolean p7, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->e:Z

    iput-boolean p8, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->f:Z

    iput-object p10, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->g:Landroid/view/View$OnClickListener;

    iput-object p9, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/c;->a()V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->setOrientation(I)V

    const-string v0, "#e5e8eb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/c;->b()V

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
    .locals 10

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private a(ILcom/igaworks/adpopcorn/cores/model/d;)V
    .locals 32

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->b()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->e()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->p()Z

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->q()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->r()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/d;->o()I

    move-result v26

    invoke-static {v12}, Lcom/igaworks/adpopcorn/cores/common/i;->b(I)I

    move-result v27

    invoke-static {v12}, Lcom/igaworks/adpopcorn/cores/common/i;->a(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {v4, v12}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Lcom/igaworks/adpopcorn/cores/common/f;I)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x1

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v30, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "COMING_SOON_BADGE_LINE_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v31, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, v31

    invoke-direct {v0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v2, 0x2

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v16, v11

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v9

    :goto_0
    if-eqz v23, :cond_6

    const-string v7, "#1a000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v5, ""

    const/4 v4, 0x0

    const/16 v7, 0x10

    if-eq v12, v7, :cond_0

    const/16 v7, 0x1a

    if-eq v12, v7, :cond_0

    const/16 v7, 0x1b

    if-ne v12, v7, :cond_7

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v8, "igaworks/adpopcorn/res/ic_play.png"

    const/4 v9, 0x0

    invoke-static {v7, v8, v6, v9}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_2
    const/4 v6, 0x7

    if-eq v12, v6, :cond_1

    const/16 v6, 0x17

    if-ne v12, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v7, "participateFlag"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v13, v8}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v5, Lcom/igaworks/adpopcorn/cores/common/f;->J:Ljava/lang/String;

    :cond_2
    const/16 v6, 0x19

    if-ne v12, v6, :cond_3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v7, "participateFlag"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v13, v8}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v5, Lcom/igaworks/adpopcorn/cores/common/f;->be:Ljava/lang/String;

    :cond_3
    if-eqz v4, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "REWARD_VIEW_CHECKED_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    const/16 v6, 0x1b

    const/4 v7, 0x0

    const-string v3, "#495057"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x1

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v14

    move-object/from16 v4, v18

    move-object/from16 v5, v22

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    if-nez v23, :cond_b

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    move-object/from16 v2, v16

    move-object/from16 v3, v28

    move/from16 v6, v27

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_new.png"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_5
    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v5, v4

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    move-object/from16 v3, v21

    move-object/from16 v4, v20

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Lcom/igaworks/adpopcorn/activity/a/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v16, v11

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v9

    goto/16 :goto_0

    :cond_6
    const-string v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v4, 0x1c

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_a

    const/16 v4, 0x14

    :cond_9
    :goto_6
    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "REWARD_VIEW_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_a
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_9

    const/16 v4, 0x18

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bg:Ljava/lang/String;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    move-object/from16 v4, v16

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    move-object/from16 v4, v17

    move-object/from16 v5, v25

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->h:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bh:Ljava/lang/String;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    move-object/from16 v4, v16

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    move-object/from16 v4, v17

    move-object/from16 v5, v25

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    goto :goto_7

    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_hot.png"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_end.png"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private b()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->addView(Landroid/view/View;)V

    const-wide v0, 0x4083500000000000L    # 618.0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v0, v2

    double-to-int v1, v0

    const-wide v2, 0x4074600000000000L    # 326.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->f:Z

    if-eqz v2, :cond_0

    const-wide v0, 0x4082c00000000000L    # 600.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v1, v0

    const-wide v2, 0x4073c00000000000L    # 316.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int v3, v0, v3

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v10}, Landroid/widget/ViewFlipper;->setId(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->p:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->p:Landroid/widget/ImageView;

    const-string v3, "#eeeeee"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->d:I

    const-wide/high16 v2, 0x4041000000000000L    # 34.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/igaworks/adpopcorn/activity/layout/c;->a(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v3, Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/widget/ViewFlipper;->setId(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ViewFlipper;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/adpopcorn/activity/layout/c;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-wide v2, 0x4083500000000000L    # 618.0

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->c()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide v4, 0x4074600000000000L    # 326.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->d()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->f:Z

    if-eqz v3, :cond_0

    const-wide v2, 0x4082c00000000000L    # 600.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide v4, 0x4073c00000000000L    # 316.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->d()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v1, v4

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->p:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->c()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->f:Z

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;ZZZ)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->m:Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->f:Z

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;ZZZ)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/c;->n:Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {p0, v1, v0}, Lcom/igaworks/adpopcorn/activity/layout/c;->a(ILcom/igaworks/adpopcorn/cores/model/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
