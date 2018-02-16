.class public Lcom/igaworks/adpopcorn/activity/a/a/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/activity/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lcom/igaworks/adpopcorn/cores/common/f;

.field private d:Landroid/graphics/drawable/GradientDrawable;

.field private e:Landroid/graphics/drawable/GradientDrawable;

.field private f:Landroid/graphics/drawable/GradientDrawable;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Ljava/util/List;

.field private i:D

.field private j:D

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/igaworks/adpopcorn/cores/common/f;ZZ)V
    .locals 10

    const/4 v7, 0x1

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->l:Z

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iput-boolean p4, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->k:Z

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v6, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v6, [I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "COMING_SOON_BADGE_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v6, [I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "REWARD_VIEW_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/igaworks/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->b:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->e()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v7

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->o()I

    move-result v17

    invoke-static {v7}, Lcom/igaworks/adpopcorn/cores/common/i;->b(I)I

    move-result v18

    invoke-static {v7}, Lcom/igaworks/adpopcorn/cores/common/i;->a(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {v5, v7}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Lcom/igaworks/adpopcorn/cores/common/f;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->p()Z

    move-result v20

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->q()I

    move-result v21

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->r()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v9, 0x0

    aput v4, v6, v9

    const/4 v9, 0x1

    aput v4, v6, v9

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 v4, 0x1

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    if-nez v4, :cond_13

    if-nez p2, :cond_5

    new-instance v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/adpopcorn/activity/a/a/a$a;-><init>(Lcom/igaworks/adpopcorn/activity/a/a/a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->k:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->l:Z

    invoke-static {v4, v6, v9, v10}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;ZZZ)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object p2

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/igaworks/adpopcorn/activity/c/f;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->d:Lcom/igaworks/adpopcorn/activity/c/f;

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->f:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->g:Landroid/widget/TextView;

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->i:Landroid/widget/LinearLayout;

    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/16 v4, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->p:Landroid/widget/ImageView;

    const/16 v4, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->q:Landroid/widget/ImageView;

    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->o:Landroid/widget/ImageView;

    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->k:Landroid/widget/LinearLayout;

    move/from16 v0, p1

    iput v0, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->a:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v14, v5

    :goto_0
    if-nez p1, :cond_6

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->k:Z

    if-nez v2, :cond_6

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->p:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->q:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->f:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    if-eqz v20, :cond_7

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    const-string v4, "#1a000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_2
    const-string v4, ""

    const/4 v2, 0x0

    const/16 v5, 0x10

    if-eq v7, v5, :cond_0

    const/16 v5, 0x1a

    if-eq v7, v5, :cond_0

    const/16 v5, 0x1b

    if-ne v7, v5, :cond_8

    :cond_0
    iget-object v5, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v6, "igaworks/adpopcorn/res/ic_play.png"

    iget-object v9, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_3
    const/4 v5, 0x7

    if-eq v7, v5, :cond_1

    const/16 v5, 0x17

    if-ne v7, v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v6, "participateFlag"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v6, v8, v9}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->J:Ljava/lang/String;

    :cond_2
    const/16 v5, 0x19

    if-ne v7, v5, :cond_3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v6, "participateFlag"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v8, v7}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->be:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_9

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->g:Landroid/widget/TextView;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    const-string v3, "#495057"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    move-object/from16 v3, v16

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    if-nez v20, :cond_e

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    move-object/from16 v3, v19

    move/from16 v6, v18

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->o:Landroid/widget/ImageView;

    const-string v3, "#eeeeee"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->d:Lcom/igaworks/adpopcorn/activity/c/f;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/activity/c/f;->clearColorFilter()V

    :goto_5
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_10

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_new.png"

    iget-object v4, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_6
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->d:Lcom/igaworks/adpopcorn/activity/c/f;

    invoke-virtual {v2, v15}, Lcom/igaworks/adpopcorn/activity/c/f;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    iget-object v4, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->d:Lcom/igaworks/adpopcorn/activity/c/f;

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    move-object v3, v15

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    return-object p2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;

    move-object v14, v4

    goto/16 :goto_0

    :cond_6
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->p:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->q:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v5, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    const-string v3, ""

    const/16 v4, 0x18

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

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_b
    const/16 v4, 0x1c

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x9

    if-lt v2, v5, :cond_d

    const/16 v4, 0x14

    :cond_c
    :goto_8
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

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

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_d
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_c

    const/16 v4, 0x18

    goto :goto_8

    :cond_e
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_f

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bg:Ljava/lang/String;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v6, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    move-object/from16 v3, v22

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    :goto_9
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->o:Landroid/widget/ImageView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->d:Lcom/igaworks/adpopcorn/activity/c/f;

    const/high16 v3, 0x1a000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/c/f;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    :cond_f
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bh:Ljava/lang/String;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v6, "COMING_SOON_BADGE_TEXT_COLOR"

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->j:D

    move-object/from16 v3, v22

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    goto :goto_9

    :cond_10
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_11

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_hot.png"

    iget-object v4, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_12

    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/badge_end.png"

    iget-object v4, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_12
    iget-object v2, v14, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_13
    if-nez p2, :cond_2b

    new-instance v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/adpopcorn/activity/a/a/a$a;-><init>(Lcom/igaworks/adpopcorn/activity/a/a/a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    sget v6, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->backgroundLayoutResId:I

    if-eqz v4, :cond_14

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->backgroundLayoutResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    :cond_14
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->campaignIconIvResId:I

    if-eqz v4, :cond_15

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->campaignIconIvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->c:Landroid/widget/ImageView;

    :cond_15
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->videoIconIvResId:I

    if-eqz v4, :cond_16

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->videoIconIvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    :cond_16
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->titleTvResId:I

    if-eqz v4, :cond_17

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->titleTvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->g:Landroid/widget/TextView;

    :cond_17
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    if-eqz v4, :cond_18

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    :cond_18
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->rewardTvResId:I

    if-eqz v4, :cond_19

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->rewardTvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    :cond_19
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->badgeIconIvResId:I

    if-eqz v4, :cond_1a

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->badgeIconIvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    :cond_1a
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->partiTypeTvResId:I

    if-eqz v4, :cond_1b

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->partiTypeTvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    :cond_1b
    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->conditionTvResId:I

    if-eqz v4, :cond_1c

    sget v4, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->conditionTvResId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->n:Landroid/widget/TextView;

    :cond_1c
    move/from16 v0, p1

    iput v0, v5, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->a:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v5

    :goto_a
    sget v5, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->backgroundLayoutResId:I

    if-eqz v5, :cond_1d

    if-eqz v20, :cond_2c

    iget-object v5, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    const-string v6, "#1a000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1d
    :goto_b
    iget-object v5, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    sget v10, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->height:I

    invoke-direct {v6, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, ""

    const/4 v5, 0x0

    sget v9, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->videoIconIvResId:I

    if-eqz v9, :cond_1f

    const/16 v9, 0x10

    if-eq v7, v9, :cond_1e

    const/16 v9, 0x1a

    if-eq v7, v9, :cond_1e

    const/16 v9, 0x1b

    if-ne v7, v9, :cond_2d

    :cond_1e
    iget-object v9, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v10, "igaworks/adpopcorn/res/ic_play.png"

    iget-object v11, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :cond_1f
    :goto_c
    sget v9, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->rewardTvResId:I

    if-eqz v9, :cond_23

    const/4 v9, 0x7

    if-eq v7, v9, :cond_20

    const/16 v9, 0x17

    if-ne v7, v9, :cond_21

    :cond_20
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v10, "participateFlag"

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v8, v11}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v6, Lcom/igaworks/adpopcorn/cores/common/f;->J:Ljava/lang/String;

    :cond_21
    const/16 v9, 0x19

    if-ne v7, v9, :cond_22

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v9, "participateFlag"

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v8, v10}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v6, Lcom/igaworks/adpopcorn/cores/common/f;->be:Ljava/lang/String;

    :cond_22
    if-eqz v5, :cond_2e

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_d
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->titleTvResId:I

    if-eqz v3, :cond_24

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->g:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    if-nez v20, :cond_31

    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->partiTypeTvResId:I

    if-eqz v3, :cond_25

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    if-eqz v3, :cond_26

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_26
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->campaignIconIvResId:I

    if-eqz v3, :cond_27

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_27
    :goto_e
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->badgeIconIvResId:I

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_37

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v5, "igaworks/adpopcorn/res/badge_new.png"

    iget-object v6, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :cond_28
    :goto_f
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->conditionTvResId:I

    if-eqz v3, :cond_29

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    sget v2, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->campaignIconIvResId:I

    if-eqz v2, :cond_2a

    iget-object v2, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->c:Landroid/widget/ImageView;

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->i:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    move-object v3, v15

    invoke-static/range {v2 .. v7}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->h:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;

    goto/16 :goto_a

    :cond_2c
    iget-object v5, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->b:Landroid/widget/LinearLayout;

    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_b

    :cond_2d
    iget-object v9, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->e:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_2e
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_30

    :cond_2f
    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_30
    iget-object v5, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_31
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_35

    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->partiTypeTvResId:I

    if-eqz v3, :cond_32

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v5, Lcom/igaworks/adpopcorn/cores/common/f;->bg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    if-eqz v3, :cond_33

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    :goto_10
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    if-eqz v3, :cond_34

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_34
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->campaignIconIvResId:I

    if-eqz v3, :cond_27

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->c:Landroid/widget/ImageView;

    const/high16 v5, 0x1a000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_e

    :cond_35
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->partiTypeTvResId:I

    if-eqz v3, :cond_36

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->c:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, v5, Lcom/igaworks/adpopcorn/cores/common/f;->bh:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    sget v3, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->scheduleTvResId:I

    if-eqz v3, :cond_33

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->h:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_37
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_38

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v5, "igaworks/adpopcorn/res/badge_hot.png"

    iget-object v6, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_f

    :cond_38
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_39

    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/a/a/a;->a:Landroid/content/Context;

    const-string v5, "igaworks/adpopcorn/res/badge_end.png"

    iget-object v6, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    goto/16 :goto_f

    :cond_39
    iget-object v3, v4, Lcom/igaworks/adpopcorn/activity/a/a/a$a;->l:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f
.end method
