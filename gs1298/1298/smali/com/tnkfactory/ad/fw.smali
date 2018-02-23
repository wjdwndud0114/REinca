.class public Lcom/tnkfactory/ad/fw;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tnkfactory/ad/AdItemList;

.field private c:Lcom/tnkfactory/ad/x;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/tnkfactory/ad/fw;->a:Landroid/content/Context;

    new-instance v0, Lcom/tnkfactory/ad/AdItemList;

    invoke-direct {v0}, Lcom/tnkfactory/ad/AdItemList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/fw;->b:Lcom/tnkfactory/ad/AdItemList;

    iput-object v1, p0, Lcom/tnkfactory/ad/fw;->c:Lcom/tnkfactory/ad/x;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/fw;->d:I

    iput-object p1, p0, Lcom/tnkfactory/ad/fw;->a:Landroid/content/Context;

    iput p2, p0, Lcom/tnkfactory/ad/fw;->d:I

    new-instance v0, Lcom/tnkfactory/ad/x;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/fw;->c:Lcom/tnkfactory/ad/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->c:Lcom/tnkfactory/ad/x;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/x;->a()V

    return-void
.end method

.method public a(Lcom/tnkfactory/ad/AdItemList;)V
    .locals 3

    iput-object p1, p0, Lcom/tnkfactory/ad/fw;->b:Lcom/tnkfactory/ad/AdItemList;

    iget v0, p0, Lcom/tnkfactory/ad/fw;->d:I

    invoke-virtual {p1}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v1

    iget v2, p0, Lcom/tnkfactory/ad/fw;->d:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tnkfactory/ad/fw;->d:I

    rem-int v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/tnkfactory/ad/AdItem;

    invoke-direct {v2}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    invoke-virtual {p1, v2}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/fw;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->c:Lcom/tnkfactory/ad/x;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/x;->b()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->b:Lcom/tnkfactory/ad/AdItemList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItemList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->b:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/AdItemList;->get(I)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/fx;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/fx;

    move-result-object v7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/fw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/tnkfactory/ad/fx;

    invoke-virtual {v0, v10}, Lcom/tnkfactory/ad/fx;->setEmptyItem(Z)V

    :goto_1
    return-object v7

    :cond_0
    move-object v0, v7

    check-cast v0, Lcom/tnkfactory/ad/fx;

    invoke-virtual {v0, v9}, Lcom/tnkfactory/ad/fx;->setEmptyItem(Z)V

    invoke-static {v7, v10}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    const-string v5, "\u00a0"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v7, v8}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    const-string v5, "\u00a0"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->getUpdateMillis()J

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v7, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tnkfactory/ad/fw;->c:Lcom/tnkfactory/ad/x;

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/x;->a(Landroid/widget/ImageView;JJ)V

    const/4 v0, 0x4

    invoke-static {v7, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->getBadgeType()I

    move-result v1

    if-ne v1, v10, :cond_2

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->isWebContents()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v8

    :goto_3
    const/4 v0, 0x5

    invoke-static {v7, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tnkfactory/ad/bj;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1}, Lcom/tnkfactory/ad/bj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/fw;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    if-ne v1, v8, :cond_4

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/tnkfactory/ad/AdItem;->isFreeContents()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v9

    goto :goto_3

    :cond_6
    move v1, v10

    goto :goto_3

    :cond_7
    move-object v7, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
