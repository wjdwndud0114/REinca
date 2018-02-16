.class Lcom/igaworks/adpopcorn/activity/b/e$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/e;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/activity/b/e;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

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
    .locals 16

    if-nez p2, :cond_6

    new-instance p2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4073b00000000000L    # 315.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4071c00000000000L    # 284.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v4, v6

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#dee2e6"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4081600000000000L    # 556.0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    const/4 v6, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_2
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4080780000000000L    # 527.0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_3
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "#e9e9e9"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x4073b00000000000L    # 315.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    const/4 v7, -0x1

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_4
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->b(Lcom/igaworks/adpopcorn/activity/b/e;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x4071c00000000000L    # 284.0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v7}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->b:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "#e9e9e9"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v14, v4

    move-object v15, v3

    move-object v2, v5

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/adpopcorn/cores/model/b;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/b;->c()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-string v6, "#495057"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v12}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adpopcorn/cores/model/b;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/b;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-string v2, "#495057"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v12

    move-object v2, v15

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->c:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adpopcorn/cores/model/b;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/b;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v6, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v2, v6}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/e;->a(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v12

    move-object v2, v14

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    return-object p2

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x406b000000000000L    # 216.0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v4, v6

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_1

    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4072a00000000000L    # 298.0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    const/4 v6, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_2

    :cond_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4070400000000000L    # 260.0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_3

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v8, 0x4064c00000000000L    # 166.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    const/4 v7, -0x1

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_4

    :cond_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adpopcorn/activity/b/e$a;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-static {v7}, Lcom/igaworks/adpopcorn/activity/b/e;->c(Lcom/igaworks/adpopcorn/activity/b/e;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_5

    :cond_6
    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v14, v4

    move-object v15, v3

    goto/16 :goto_6
.end method
