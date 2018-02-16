.class public Lcom/tnkfactory/ad/fy;
.super Lcom/tnkfactory/ad/c;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private g:Lcom/tnkfactory/ad/AdItemList;

.field private h:Lcom/tnkfactory/ad/fw;

.field private k:I

.field private final l:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;IIZI)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/fy;->g:Lcom/tnkfactory/ad/AdItemList;

    iput-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/fy;->k:I

    new-instance v0, Lcom/tnkfactory/ad/gd;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gd;-><init>(Lcom/tnkfactory/ad/fy;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/fy;->l:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/tnkfactory/ad/fy;->setId(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/fy;->b(Landroid/content/Context;IIZ)V

    new-instance v0, Lcom/tnkfactory/ad/fw;

    iget v1, p0, Lcom/tnkfactory/ad/fy;->k:I

    invoke-direct {v0, p1, v1}, Lcom/tnkfactory/ad/fw;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/fy;Lcom/tnkfactory/ad/AdItemList;)Lcom/tnkfactory/ad/AdItemList;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/fy;->g:Lcom/tnkfactory/ad/AdItemList;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)Lcom/tnkfactory/ad/fy;
    .locals 1

    const/16 v0, 0x62

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/fy;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZ)Lcom/tnkfactory/ad/fy;
    .locals 7

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/fy;

    const/16 v5, 0x62

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/fy;-><init>(Landroid/content/Context;IIZI)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/fy;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/fz;

    invoke-direct {v1}, Lcom/tnkfactory/ad/fz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private a(Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->i:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/tnkfactory/ad/AdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/fy;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->d()V

    return-void
.end method

.method private a(FFF)[I
    .locals 11

    const/high16 v4, 0x42200000    # 40.0f

    const v9, 0x3e9ba5e3    # 0.304f

    const/4 v1, 0x2

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/16 v0, 0x14

    new-array v8, v0, [I

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    div-float v0, p1, p3

    const/high16 v2, 0x44160000    # 600.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    const v2, 0x3f533333    # 0.825f

    mul-float v7, p2, v2

    const v2, 0x3f2ac083    # 0.667f

    mul-float v6, v7, v2

    mul-float v5, v4, p3

    mul-float v4, v3, p3

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float/2addr v2, p3

    sub-float v3, v2, v3

    mul-float v2, v3, v9

    :goto_1
    const/4 v9, 0x0

    add-float/2addr v7, v10

    float-to-int v7, v7

    aput v7, v8, v9

    const/4 v7, 0x1

    add-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v8, v7

    add-float/2addr v5, v10

    float-to-int v5, v5

    aput v5, v8, v1

    const/4 v1, 0x3

    add-float/2addr v4, v10

    float-to-int v4, v4

    aput v4, v8, v1

    const/4 v1, 0x4

    add-float/2addr v3, v10

    float-to-int v3, v3

    aput v3, v8, v1

    const/4 v1, 0x5

    add-float/2addr v2, v10

    float-to-int v2, v2

    aput v2, v8, v1

    const/4 v1, 0x6

    aput v0, v8, v1

    return-object v8

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    div-float v0, p2, p3

    const/high16 v2, 0x44160000    # 600.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    const v2, 0x3f639581    # 0.889f

    mul-float v7, p2, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v6, v7, v2

    mul-float v5, v4, p3

    mul-float v4, v3, p3

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float/2addr v2, p3

    sub-float v3, v2, v3

    mul-float v2, v3, v9

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method static synthetic b(Lcom/tnkfactory/ad/fy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/tnkfactory/ad/fy;->a(Landroid/app/Activity;)Lcom/tnkfactory/ad/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fy;->removeFromParentWithCloseEvent(ZI)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;IIZ)V
    .locals 14

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v1

    iget v1, v1, Lcom/tnkfactory/ad/hz;->H:F

    const v2, -0x7fafafb0

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/fy;->setBackgroundColor(I)V

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/tnkfactory/ad/fy;->a(FFF)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v7, 0x4

    aget v7, v2, v7

    const/4 v8, 0x5

    aget v8, v2, v8

    const/4 v9, 0x6

    aget v2, v2, v9

    iput v2, p0, Lcom/tnkfactory/ad/fy;->k:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x64

    invoke-static {p1, v3, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const v5, -0xfefeff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x65

    invoke-static {p1, v4, v5}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/tnkfactory/ad/bj;->c(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v9, -0x1

    invoke-direct {v5, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, -0x1

    invoke-static {p1, v5, v6}, Lcom/tnkfactory/ad/ft;->k(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, -0x1

    invoke-static {p1, v6, v9}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, -0x1

    invoke-static {p1, v9, v10}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v10, 0x7

    invoke-static {p1, v5, v10}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v10, 0x11

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setGravity(I)V

    const v10, -0x30304

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v10, 0x1

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0xb

    const/16 v12, 0xe

    invoke-static {v10, v11, v12}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/tnkfactory/ad/ga;

    invoke-direct {v10, p0}, Lcom/tnkfactory/ad/ga;-><init>(Lcom/tnkfactory/ad/fy;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x8

    invoke-static {p1, v5, v6}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    const v6, -0xfcfcfd

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v8, 0xd

    invoke-static {v6, v7, v8}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/tnkfactory/ad/gb;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/gb;-><init>(Lcom/tnkfactory/ad/fy;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x2

    const/16 v7, 0x65

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0x66

    invoke-static {p1, v5, v6}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-static {p1, v1, v6}, Lcom/tnkfactory/ad/ft;->f(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/GridView;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    iget v6, p0, Lcom/tnkfactory/ad/fy;->k:I

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getGridViewSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setCacheColorHint(I)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/fy;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    iget-object v1, p0, Lcom/tnkfactory/ad/fy;->g:Lcom/tnkfactory/ad/AdItemList;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fw;->a(Lcom/tnkfactory/ad/AdItemList;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    const v1, -0x2f2f30

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/tnkfactory/ad/gc;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gc;-><init>(Lcom/tnkfactory/ad/fy;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/gc;->start()V

    return-void
.end method

.method private getGridView()Landroid/widget/GridView;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method private getGridViewSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object v0
.end method

.method private getLeftButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getRightButton()Landroid/widget/Button;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private getTitleView()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fy;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fy;->requestFocus()Z

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->e()V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fw;->a()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-virtual {v0, p3}, Lcom/tnkfactory/ad/fw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/tnkfactory/ad/fy;->e:I

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/fy;->a(Lcom/tnkfactory/ad/AdItem;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fw;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->h:Lcom/tnkfactory/ad/fw;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fw;->b()V

    goto :goto_0
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/fy;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
