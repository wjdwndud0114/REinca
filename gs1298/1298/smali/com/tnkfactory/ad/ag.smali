.class Lcom/tnkfactory/ad/ag;
.super Landroid/widget/LinearLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/ag;->b(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)Lcom/tnkfactory/ad/ag;
    .locals 5

    new-instance v0, Lcom/tnkfactory/ad/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/tnkfactory/ad/ag;-><init>(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ag;->setBackgroundColor(I)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    iget v2, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    iget v3, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    iget v4, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/ag;->setPadding(IIII)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;ILcom/tnkfactory/ad/TnkAdItemLayout;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xa

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-lez v0, :cond_0

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    iget v2, p3, Lcom/tnkfactory/ad/TnkAdItemLayout;->colorBg:I

    if-eqz v2, :cond_1

    iget v2, p3, Lcom/tnkfactory/ad/TnkAdItemLayout;->colorBg:I

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    invoke-static {p1, p3}, Lcom/tnkfactory/ad/av;->a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)Lcom/tnkfactory/ad/av;

    move-result-object v2

    add-int/lit16 v4, v0, 0x12c

    invoke-virtual {v2, v4}, Lcom/tnkfactory/ad/av;->setId(I)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/ag;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v2, v2, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColor:I

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/ag;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tnkfactory/ad/av;
    .locals 1

    add-int/lit16 v0, p1, 0x12c

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/av;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    sput p2, Lcom/tnkfactory/ad/u;->e:I

    return-void
.end method
