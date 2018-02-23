.class Lcom/tnkfactory/ad/ae;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tnkfactory/ad/AdItemList;

.field private c:I

.field private d:Lcom/tnkfactory/ad/x;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnLongClickListener;

.field private g:Lcom/tnkfactory/ad/TnkAdItemLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/ae;->c:I

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->e:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->f:Landroid/view/View$OnLongClickListener;

    iput-object v1, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iput-object p1, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    iput p2, p0, Lcom/tnkfactory/ad/ae;->c:I

    iput-object p3, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    new-instance v0, Lcom/tnkfactory/ad/x;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/tnkfactory/ad/AdItem;)V
    .locals 11

    const/4 v9, 0x4

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/tnkfactory/ad/AdItem;->getPointAmount()J

    move-result-wide v2

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tnkfactory/ad/ha;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/tnkfactory/ad/AdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p4, Lcom/tnkfactory/ad/AdItem;->l:Z

    if-eqz v7, :cond_9

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->am:Ljava/lang/String;

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iget-object v4, v3, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    :goto_2
    if-nez v4, :cond_1

    const-string v4, "{point}<br>{unit}"

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "{unit}"

    :cond_2
    const-string v8, "{point}"

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "{unit}"

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "{point}"

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "{unit}"

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "{point}"

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "{unit}"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-nez v7, :cond_3

    if-nez p2, :cond_e

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/TnkAdTagLayout;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/TnkAdTagLayout;->b(I)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->confirmLabelFormat:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p4}, Lcom/tnkfactory/ad/AdItem;->isWebContents()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    :goto_5
    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    :goto_6
    if-nez v2, :cond_13

    const-string v2, "{point}<br>{unit} "

    move-object v10, v2

    move v2, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p4}, Lcom/tnkfactory/ad/AdItem;->isFreeContents()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdTagStyle;->pointLabelFormat:Ljava/lang/String;

    goto :goto_6

    :cond_d
    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v4, v3, Lcom/tnkfactory/ad/TnkAdTagStyle;->pointLabelFormat:Ljava/lang/String;

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdTagStyle;->pointUnitFormat:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    if-eqz p1, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    :cond_11
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/TnkAdTagStyle;->a(I)Lcom/tnkfactory/ad/TnkStyle;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_12
    invoke-static {v2}, Lcom/tnkfactory/ad/bj;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_13
    move-object v10, v2

    move v2, v0

    move-object v0, v10

    goto/16 :goto_1
.end method

.method private a(Lcom/tnkfactory/ad/av;Lcom/tnkfactory/ad/AdItem;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getBannerImageUrl()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->b()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "\u00a0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->c()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "\u00a0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->a()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getUpdateMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/x;->a(Landroid/widget/ImageView;JJ)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->g()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getBadgeType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tnkfactory/ad/av;->f()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/tnkfactory/ad/ae;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/tnkfactory/ad/AdItem;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/av;->setVisibility(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/av;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/av;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_2
    return-void

    :cond_5
    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    invoke-virtual {v2, v1, v0}, Lcom/tnkfactory/ad/x;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    if-eqz v1, :cond_8

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tnkfactory/ad/av;->setVisibility(I)V

    invoke-virtual {p1, v7}, Lcom/tnkfactory/ad/av;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v7}, Lcom/tnkfactory/ad/av;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/x;->a()V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ae;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ae;->f:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Lcom/tnkfactory/ad/AdItemList;)V
    .locals 4

    iput-object p1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    iget v0, p0, Lcom/tnkfactory/ad/ae;->c:I

    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v1

    iget v2, p0, Lcom/tnkfactory/ad/ae;->c:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tnkfactory/ad/ae;->c:I

    rem-int v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    new-instance v3, Lcom/tnkfactory/ad/AdItem;

    invoke-direct {v3}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ae;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->d:Lcom/tnkfactory/ad/x;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/x;->b()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdItemList;->refresh(Landroid/content/Context;)V

    iget v0, p0, Lcom/tnkfactory/ad/ae;->c:I

    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v1

    iget v2, p0, Lcom/tnkfactory/ad/ae;->c:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tnkfactory/ad/ae;->c:I

    rem-int v1, v0, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    new-instance v3, Lcom/tnkfactory/ad/AdItem;

    invoke-direct {v3}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ae;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/ae;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/AdItemList;->get(I)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ae;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v1

    iget v2, p0, Lcom/tnkfactory/ad/ae;->c:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ae;->getItemViewType(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tnkfactory/ad/af;->a(Landroid/content/Context;I)Lcom/tnkfactory/ad/af;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->a:Landroid/content/Context;

    iget v1, p0, Lcom/tnkfactory/ad/ae;->c:I

    iget-object v2, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/ag;->a(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)Lcom/tnkfactory/ad/ag;

    move-result-object v1

    :goto_0
    iget v0, p0, Lcom/tnkfactory/ad/ae;->c:I

    mul-int v3, p1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/tnkfactory/ad/ae;->c:I

    if-ge v2, v0, :cond_0

    add-int v4, v3, v2

    move-object v0, v1

    check-cast v0, Lcom/tnkfactory/ad/ag;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/ag;->a(I)Lcom/tnkfactory/ad/av;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/tnkfactory/ad/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0, v5, v0}, Lcom/tnkfactory/ad/ae;->a(Lcom/tnkfactory/ad/av;Lcom/tnkfactory/ad/AdItem;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tnkfactory/ad/av;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    if-eqz v0, :cond_4

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemEven:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemEven:I

    invoke-virtual {v5, v0}, Lcom/tnkfactory/ad/av;->a(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemOdd:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ae;->g:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemOdd:I

    invoke-virtual {v5, v0}, Lcom/tnkfactory/ad/av;->a(I)V

    goto :goto_2

    :cond_4
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_5

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->background:I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->background:I

    invoke-virtual {v5, v0}, Lcom/tnkfactory/ad/av;->a(I)V

    goto :goto_2

    :cond_5
    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_2

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    invoke-virtual {v5, v0}, Lcom/tnkfactory/ad/av;->a(I)V

    goto :goto_2

    :cond_6
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
