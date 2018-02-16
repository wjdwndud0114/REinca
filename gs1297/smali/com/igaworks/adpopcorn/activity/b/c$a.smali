.class Lcom/igaworks/adpopcorn/activity/b/c$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/activity/b/c;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->c:Ljava/util/List;

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
    .locals 13

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/a;->setId(I)V

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/c/a;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082980000000000L    # 595.0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v12, v0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const-string v4, "#495057"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v10}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$a;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->c(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/igaworks/adpopcorn/activity/c/a;->a(Z)V

    :goto_1
    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/activity/c/a;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v12, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/igaworks/adpopcorn/activity/c/a;->a(Z)V

    goto :goto_1
.end method
