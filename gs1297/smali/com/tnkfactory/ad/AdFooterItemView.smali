.class Lcom/tnkfactory/ad/AdFooterItemView;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->c:I

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdFooterItemView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->c:I

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/AdFooterItemView;->b(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)V

    return-void
.end method

.method private a()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)Lcom/tnkfactory/ad/AdFooterItemView;
    .locals 6

    const/16 v4, 0xa

    const/4 v3, 0x5

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/tnkfactory/ad/TnkAdFooterLayout;->layout:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tnkfactory/ad/AdFooterItemView;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/AdFooterItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v3, v4, v3}, Lcom/tnkfactory/ad/AdFooterItemView;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdFooterItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/AdFooterItemView;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/AdFooterItemView;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)V

    iget v2, p1, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    iget v3, p1, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    iget v4, p1, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    iget v5, p1, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tnkfactory/ad/AdFooterItemView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v5, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdFooterItemView;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v5, v0}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->ap:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "6.36"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/fd;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget v2, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setId(I)V

    const/16 v2, 0x15

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdFooterItemView;->d()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v3, v5, v2}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/AdFooterItemView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/AdFooterItemView;->addView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->setBackgroundColor(I)V

    invoke-virtual {p0, v4}, Lcom/tnkfactory/ad/AdFooterItemView;->setOrientation(I)V

    return-void
.end method

.method private b()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdFooterLayout;)V
    .locals 4

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v2, p2, Lcom/tnkfactory/ad/TnkAdFooterLayout;->layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->addView(Landroid/view/View;)V

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idHelpdesk:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->a:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idPrivacy:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->b:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idContact:I

    iput v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->c:I

    return-void
.end method

.method private c()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdFooterItemView;->c:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdFooterItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private d()Landroid/content/res/ColorStateList;
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

    const/high16 v3, -0x1000000

    aput v3, v2, v4

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget v3, v3, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdFooterItemView;->a()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdFooterItemView;->b()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdFooterItemView;->c()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    sput p2, Lcom/tnkfactory/ad/u;->h:I

    return-void
.end method
