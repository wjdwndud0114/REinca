.class Lcom/tnkfactory/ad/av;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/av;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->c:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->e:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->f:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->g:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->h:I

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->layout:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/av;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/av;->b(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)Lcom/tnkfactory/ad/av;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/tnkfactory/ad/av;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/av;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/av;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Lcom/tnkfactory/ad/av;->setClickable(Z)V

    invoke-virtual {v0, v4}, Lcom/tnkfactory/ad/av;->setLongClickable(Z)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 13

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x3

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/hz;->H:F

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget v3, v3, Lcom/tnkfactory/ad/TnkAdItemStyle;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-static {p1, v1, v2}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v1

    mul-float v2, v5, v0

    float-to-int v2, v2

    mul-float v3, v5, v0

    float-to-int v3, v3

    mul-float v4, v5, v0

    float-to-int v4, v4

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/av;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42840000    # 66.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v2, v9}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x4

    invoke-static {p1, v3, v4}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v5, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v5, v5, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v5, v5, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget v5, v5, Lcom/tnkfactory/ad/TnkAdTagStyle;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget v6, v6, Lcom/tnkfactory/ad/TnkAdTagStyle;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v4, v12}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLines(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1, v5, v10}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLines(I)V

    const/16 v6, 0xf

    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x2

    invoke-static {p1, v6, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0xf

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {v6, v7, v11, v0, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0x30

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/av;->addView(Landroid/view/View;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tnkfactory/ad/av;->a:I

    iput v9, p0, Lcom/tnkfactory/ad/av;->b:I

    iput v10, p0, Lcom/tnkfactory/ad/av;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/av;->d:I

    iput v12, p0, Lcom/tnkfactory/ad/av;->e:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/av;->f:I

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/tnkfactory/ad/TnkAdItemLayout;)V
    .locals 5

    const/16 v4, 0xa

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v1, v0, Lcom/tnkfactory/ad/hz;->H:F

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->height:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v2, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->addView(Landroid/view/View;)V

    iput v4, p0, Lcom/tnkfactory/ad/av;->a:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idIcon:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->b:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTitle:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->c:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idSubtitle:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->d:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTag:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->e:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagPoint:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->g:I

    iget v0, p2, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagLabel:I

    iput v0, p0, Lcom/tnkfactory/ad/av;->h:I

    return-void
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1f1f11

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->b:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->a:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->c:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->d:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->e:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->g:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public f()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->h:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public g()Landroid/widget/ImageView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/av;->f:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/av;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
