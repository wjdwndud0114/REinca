.class Lcom/tnkfactory/ad/ah;
.super Lcom/tnkfactory/ad/AdLayout;


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

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:[Landroid/view/View;

.field private s:Lcom/tnkfactory/ad/AdListView;

.field private t:Lcom/tnkfactory/ad/AdItem;

.field private u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

.field private v:Landroid/graphics/Bitmap;

.field private final w:Landroid/os/Handler;

.field private final x:Landroid/os/Handler;

.field private final y:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/ah;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->c:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->e:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->f:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->g:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->h:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->k:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->l:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->m:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->n:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->o:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->p:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/tnkfactory/ad/ah;->q:F

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tnkfactory/ad/aq;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/aq;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->w:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/au;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/au;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->x:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/at;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/at;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->y:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/tnkfactory/ad/ah;->setId(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/ah;->a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;Lcom/tnkfactory/ad/TnkAdDetailLayout;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/tnkfactory/ad/ah;->a:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->b:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->c:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->d:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->e:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->f:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->g:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->h:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->k:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->l:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->m:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->n:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->o:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->p:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/tnkfactory/ad/ah;->q:F

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tnkfactory/ad/aq;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/aq;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->w:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/au;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/au;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->x:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/at;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/at;-><init>(Lcom/tnkfactory/ad/ah;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->y:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Lcom/tnkfactory/ad/ah;->setId(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/ah;->a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;Lcom/tnkfactory/ad/TnkAdDetailLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ah;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a()Landroid/widget/ImageView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->a:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdListView;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/TnkAdDetailLayout;)Lcom/tnkfactory/ad/ah;
    .locals 7

    const/16 v5, 0x60

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_0

    iget v0, p4, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tnkfactory/ad/ah;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/ah;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;III)V

    :goto_0
    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/ah;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/ai;

    invoke-direct {v1}, Lcom/tnkfactory/ad/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ah;->b(Landroid/content/Context;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/ah;

    invoke-direct {v0, p0, p1, p4, v5}, Lcom/tnkfactory/ad/ah;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;Lcom/tnkfactory/ad/TnkAdDetailLayout;I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;II)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v2

    iget v2, v2, Lcom/tnkfactory/ad/hz;->H:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->q:F

    invoke-static/range {p1 .. p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tnkfactory/ad/hz;->o:Z

    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/ad/AdItem;->getCampaignCount()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    const/high16 v3, -0x80000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tnkfactory/ad/ah;->setBackgroundColor(I)V

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tnkfactory/ad/ah;->q:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/tnkfactory/ad/ah;->a(FFFZ)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/16 v4, 0xd

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v7, v2, v7

    const/4 v8, 0x4

    aget v8, v2, v8

    const/4 v9, 0x5

    aget v9, v2, v9

    const/4 v10, 0x6

    aget v10, v2, v10

    const/4 v11, 0x7

    aget v11, v2, v11

    const/16 v12, 0x8

    aget v12, v2, v12

    const/16 v13, 0x9

    aget v13, v2, v13

    const/16 v14, 0xa

    aget v14, v2, v14

    const/16 v15, 0xb

    aget v15, v2, v15

    const/16 v16, 0xc

    aget v2, v2, v16

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v4, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0x3f6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v4

    sget-object v7, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v7, v7, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v7, v7, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    invoke-virtual {v7, v4}, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->a(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tnkfactory/ad/ah;->q:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v0}, Lcom/tnkfactory/ad/bj;->d(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v7, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x3f7

    move-object/from16 v0, p1

    invoke-static {v0, v7, v6}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v6

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x3eb

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x1

    const/16 v9, 0x3f7

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0x3f8

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v7

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0x3e9

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLines(I)V

    const/4 v9, 0x0

    const/high16 v10, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tnkfactory/ad/ah;->q:F

    move/from16 v16, v0

    mul-float v11, v11, v16

    float-to-int v11, v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v9, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v9, v8}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x3

    const/16 v10, 0x3f8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x1

    const/16 v10, 0x3f7

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v10, 0x3ea

    move-object/from16 v0, p1

    invoke-static {v0, v8, v10}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tnkfactory/ad/ah;->q:F

    move/from16 v16, v0

    mul-float v12, v12, v16

    float-to-int v12, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v10, v11, v12, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v10, 0x33

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v10, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v10, v10, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v10, v10, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iget-object v10, v10, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v10, v8}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x3f5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v4

    sget-object v5, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v5, v5, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v5, v5, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    invoke-virtual {v5, v4}, Lcom/tnkfactory/ad/TnkAdFooterStyle;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tnkfactory/ad/ah;->q:F

    invoke-static {v5, v6}, Lcom/tnkfactory/ad/bj;->f(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xa

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0xa

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v8, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x3f2

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v9, 0xc

    const/16 v10, 0xf

    invoke-static {v6, v9, v10}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x3f3

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v6

    iget-object v6, v6, Lcom/tnkfactory/ad/ha;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    sget-object v6, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v6, v6, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v6, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v9, 0xd

    invoke-static {v6, v7, v9}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x3

    const/16 v6, 0x3f6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x2

    const/16 v6, 0x3f5

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v5, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/widget/ScrollView;->setPadding(IIII)V

    const/high16 v4, 0x2000000

    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    invoke-virtual {v4, v5}, Lcom/tnkfactory/ad/TnkAdBodyStyle;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tnkfactory/ad/ah;->q:F

    invoke-static {v4, v6}, Lcom/tnkfactory/ad/bj;->e(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-lez v2, :cond_5

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x3f4

    move-object/from16 v0, p1

    invoke-static {v0, v4, v2}, Lcom/tnkfactory/ad/ft;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x3f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->m:I

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v8, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget v8, v8, Lcom/tnkfactory/ad/TnkAdTagStyle;->width:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sget-object v9, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v9, v9, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget v9, v9, Lcom/tnkfactory/ad/TnkAdTagStyle;->height:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x3ed

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v4

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLines(I)V

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x1

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x0

    const/16 v9, 0x3ed

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x3ee

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tnkfactory/ad/ah;->q:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x13

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-object v8, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v8, v8, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    invoke-virtual {v8, v4}, Lcom/tnkfactory/ad/TnkAdBodyStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aput-object v7, v4, v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, -0x3f3f40

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v4, 0x3ef

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v4, v2}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v4, 0x3f0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v4

    iget-object v4, v4, Lcom/tnkfactory/ad/ha;->z:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdTagStyle;->Free:Lcom/tnkfactory/ad/TnkStyle;

    iget v4, v4, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Lcom/tnkfactory/ad/ao;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/tnkfactory/ad/ao;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x3fa

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/tnkfactory/ad/ft;->l(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;

    move-result-object v2

    const v4, -0x3f3f40

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v4, 0x3f1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iget-object v4, v4, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v4, v2}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tnkfactory/ad/ah;->addView(Landroid/view/View;)V

    const/16 v2, 0x3eb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->a:I

    const/16 v2, 0x3e9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->b:I

    const/16 v2, 0x3ea

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->c:I

    const/16 v2, 0x3ed

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->d:I

    const/16 v2, 0x3ee

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->g:I

    const/16 v2, 0x3ef

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->n:I

    const/16 v2, 0x3f0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->o:I

    const/16 v2, 0x3fa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->p:I

    const/16 v2, 0x3f1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->h:I

    const/16 v2, 0x3f2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->k:I

    const/16 v2, 0x3f3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tnkfactory/ad/ah;->l:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;Lcom/tnkfactory/ad/TnkAdDetailLayout;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x0

    iput-object p2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    iput-object p3, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/hz;->H:F

    iput v0, p0, Lcom/tnkfactory/ad/ah;->q:F

    const-string v0, "AdListDetailView:init() with TnkLayout"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v2, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->layout:I

    if-nez v1, :cond_1

    iput-object v5, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTag:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->d:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAction:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->g:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/ah;->addView(Landroid/view/View;)V

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idIcon:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->a:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTitle:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->b:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idSubtitle:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->c:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAppDesc:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->n:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idNotice:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->h:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idDescButton:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->o:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idConfirm:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->k:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idCancel:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->l:I

    iget v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idImage:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->m:I

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->i()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tnkfactory/ad/an;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/an;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/tnkfactory/ad/AdItem;->getCampaignCount()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    array-length v1, v1

    if-ge v2, v1, :cond_2

    iget-object v1, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->layout:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget v1, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idActionList:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aput-object v4, v1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTag:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->d:I

    iget-object v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagPoint:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->e:I

    iget-object v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagLabel:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->f:I

    iget-object v0, p3, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idAction:I

    iput v0, p0, Lcom/tnkfactory/ad/ah;->g:I

    goto :goto_0
.end method

.method private a(Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/ar;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tnkfactory/ad/ar;-><init>(Lcom/tnkfactory/ad/ah;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v3}, Lcom/tnkfactory/ad/AdItem;->getAppPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->isWebContents()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/tnkfactory/ad/AdItem;)V
    .locals 2

    new-instance v0, Lcom/tnkfactory/ad/as;

    new-instance v1, Lcom/tnkfactory/ad/ap;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ap;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/tnkfactory/ad/as;-><init>(Lcom/tnkfactory/ad/ah;Lcom/tnkfactory/ad/AdItem;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/as;->start()V

    return-void
.end method

.method private a(FFFZ)[I
    .locals 19

    const/16 v0, 0x14

    new-array v6, v0, [I

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    if-eqz p4, :cond_0

    const v0, 0x3ec5a1cb    # 0.386f

    mul-float v2, p2, v0

    const v0, 0x3f51eb85    # 0.82f

    mul-float v1, p1, v0

    const v0, 0x3f0dd2f2    # 0.554f

    mul-float/2addr v0, v2

    :goto_0
    const/high16 v3, 0x428c0000    # 70.0f

    mul-float v5, v3, p3

    const/high16 v3, 0x429a0000    # 77.0f

    mul-float v4, v3, p3

    const/high16 v3, 0x42580000    # 54.0f

    mul-float v3, v3, p3

    move/from16 v17, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v1

    move/from16 v1, v17

    :goto_1
    const/high16 v7, 0x42700000    # 60.0f

    mul-float v7, v7, p3

    const v8, 0x3f428f5c    # 0.76f

    mul-float/2addr v8, v2

    const v9, 0x3f428f5c    # 0.76f

    mul-float/2addr v9, v2

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v2

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v9

    const v13, 0x3fe66666    # 1.8f

    mul-float/2addr v13, v7

    const v14, 0x3f0e5604    # 0.556f

    mul-float/2addr v14, v7

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v5, v5, v16

    float-to-int v5, v5

    aput v5, v6, v15

    const/4 v5, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    float-to-int v7, v7

    aput v7, v6, v5

    const/4 v5, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v6, v5

    const/4 v3, 0x3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v6, v3

    const/4 v2, 0x4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v8

    float-to-int v3, v3

    aput v3, v6, v2

    const/4 v2, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v9

    float-to-int v3, v3

    aput v3, v6, v2

    const/4 v2, 0x6

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v10

    float-to-int v3, v3

    aput v3, v6, v2

    const/4 v2, 0x7

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v11

    float-to-int v3, v3

    aput v3, v6, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v12

    float-to-int v3, v3

    aput v3, v6, v2

    const/16 v2, 0x9

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v6, v2

    const/16 v1, 0xa

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v13

    float-to-int v2, v2

    aput v2, v6, v1

    const/16 v1, 0xb

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v6, v1

    const/16 v1, 0xc

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v6, v1

    const/16 v0, 0xd

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v1, v1

    aput v1, v6, v0

    return-object v6

    :cond_0
    const v0, 0x3f160419    # 0.586f

    mul-float v2, p2, v0

    const v0, 0x3f6b851f    # 0.92f

    mul-float v1, p1, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const v0, 0x3f16c8b4    # 0.589f

    mul-float v1, p2, v0

    const v0, 0x3f428f5c    # 0.76f

    mul-float v0, v0, p1

    :goto_2
    const v2, 0x3f0dd2f2    # 0.554f

    mul-float/2addr v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v5, v3, p3

    const/high16 v3, 0x42c60000    # 99.0f

    mul-float v4, v3, p3

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float v3, v3, p3

    move/from16 v17, v2

    move v2, v4

    move v4, v0

    move/from16 v0, v17

    move/from16 v18, v5

    move v5, v1

    move v1, v3

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_2
    const v0, 0x3f578d50    # 0.842f

    mul-float v1, p2, v0

    const v0, 0x3f428f5c    # 0.76f

    mul-float v0, v0, p1

    goto :goto_2
.end method

.method private b()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->b:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private b(I)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/ah;->d:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/tnkfactory/ad/ah;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 12

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v11, 0x8

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->j()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getFeatureImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/ah;->a(Lcom/tnkfactory/ad/AdItem;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->a()Landroid/widget/ImageView;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getUpdateMillis()J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->c()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "\u00a0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->isWebContents()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    :goto_1
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    if-nez v1, :cond_c

    move v1, v8

    :goto_2
    move v3, v7

    :goto_3
    if-ge v3, v1, :cond_13

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v4, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v4, v3}, Lcom/tnkfactory/ad/AdItem;->getCampaignItem(I)Lcom/tnkfactory/ad/AdCampaignItem;

    move-result-object v4

    iget-wide v4, v4, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    invoke-virtual {v2, v4, v5}, Lcom/tnkfactory/ad/ha;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/tnkfactory/ad/ah;->b(I)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkAdTagLayout;->a(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkAdTagLayout;->b(I)I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->u:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    :goto_5
    if-nez v2, :cond_5

    const-string v2, "{point}<br><small>{unit}</small>"

    :cond_5
    invoke-direct {p0, v3}, Lcom/tnkfactory/ad/ah;->c(I)Landroid/widget/TextView;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/tnkfactory/ad/ah;->d(I)Landroid/widget/TextView;

    move-result-object v10

    if-eqz v9, :cond_11

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_6

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/AdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v2, ""

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_6
    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2, v3}, Lcom/tnkfactory/ad/AdItem;->getCampaignItem(I)Lcom/tnkfactory/ad/AdCampaignItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tnkfactory/ad/AdCampaignItem;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/tnkfactory/ad/ah;->e(I)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x3f9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->isFreeContents()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v7

    goto/16 :goto_1

    :cond_b
    move v0, v8

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    array-length v1, v1

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/ad/TnkAdTagStyle;->a(I)Lcom/tnkfactory/ad/TnkStyle;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_f
    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->b(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_10
    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdTagStyle;->pointLabelFormat:Ljava/lang/String;

    goto/16 :goto_5

    :cond_11
    if-eqz v10, :cond_12

    const/4 v9, 0x4

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    const-string v9, "{point}"

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "{unit}"

    iget-object v9, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v9}, Lcom/tnkfactory/ad/AdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_13
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->d()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getExtraDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    if-ne v0, v6, :cond_18

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->B:Ljava/lang/String;

    :goto_7
    const/high16 v1, 0x41200000    # 10.0f

    iget v3, p0, Lcom/tnkfactory/ad/ah;->q:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/in;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->g()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v1, Lcom/tnkfactory/ad/aj;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/aj;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->i()Landroid/widget/Button;

    move-result-object v2

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v7

    :goto_8
    array-length v5, v3

    if-ge v0, v5, :cond_1c

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v0, v6, :cond_19

    :cond_16
    :goto_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v8, :cond_17

    if-eqz v2, :cond_17

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    :goto_a
    return-void

    :cond_18
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->A:Ljava/lang/String;

    goto :goto_7

    :cond_19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v9, 0x64

    if-gt v5, v9, :cond_16

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1b
    iget v0, p0, Lcom/tnkfactory/ad/ah;->p:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_1c
    move v8, v7

    goto :goto_9

    :cond_1d
    move-object v0, v1

    goto/16 :goto_7
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->m()V

    return-void
.end method

.method private c()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->c:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private c(I)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/tnkfactory/ad/ah;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    return-object v0
.end method

.method static synthetic d(Lcom/tnkfactory/ad/ah;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->w:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->h:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private d(I)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/tnkfactory/ad/ah;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private e()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->k:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private e(I)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/ah;->g:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->r:[Landroid/view/View;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/tnkfactory/ad/ah;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic e(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->k()V

    return-void
.end method

.method static synthetic f(Lcom/tnkfactory/ad/ah;)Landroid/widget/ImageView;
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->j()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/tnkfactory/ad/ah;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private g()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->l:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private h()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->n:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->o()V

    return-void
.end method

.method private i()Landroid/widget/Button;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->o:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->p()V

    return-void
.end method

.method private j()Landroid/widget/ImageView;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ah;->m:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->n()V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->h()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/AdItem;->getAppDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/tnkfactory/ad/ak;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ak;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/VideoAdListener;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    const-class v2, Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_aditem"

    iget-object v2, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "failed to start video."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    new-instance v2, Lcom/tnkfactory/ad/al;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/al;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/tnkfactory/ad/AdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    goto :goto_0
.end method

.method private m()V
    .locals 0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->f()V

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->l()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ah;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/tnkfactory/ad/am;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/am;-><init>(Lcom/tnkfactory/ad/ah;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/am;->start()V

    return-void
.end method

.method private o()V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->i(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private p()V
    .locals 4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->t:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->i(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ah;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/ah;->a(Landroid/widget/Button;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public parentLayout()Lcom/tnkfactory/ad/AdLayout;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    return-object v0
.end method

.method public removeFromParent()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->s:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdListView;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ah;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/ah;->v:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
