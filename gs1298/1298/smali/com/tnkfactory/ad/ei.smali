.class Lcom/tnkfactory/ad/ei;
.super Ljava/lang/Object;


# static fields
.field private static final c:Landroid/graphics/Bitmap;


# instance fields
.field private a:I

.field private b:I

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/tnkfactory/ad/ex;

.field private h:Lcom/tnkfactory/ad/BannerAdListener;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Lcom/tnkfactory/framework/vo/ValueObject;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:I

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:Lcom/tnkfactory/ad/hl;

.field private final v:Lcom/tnkfactory/ad/ServiceCallback;

.field private w:Landroid/os/Handler;

.field private x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/tnkfactory/ad/da;->a:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/tnkfactory/ad/da;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/tnkfactory/ad/ei;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tnkfactory/ad/ei;->a:I

    iput v1, p0, Lcom/tnkfactory/ad/ei;->b:I

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    iput v4, p0, Lcom/tnkfactory/ad/ei;->i:I

    iput-boolean v1, p0, Lcom/tnkfactory/ad/ei;->k:Z

    iput-boolean v1, p0, Lcom/tnkfactory/ad/ei;->l:Z

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    iput v1, p0, Lcom/tnkfactory/ad/ei;->p:I

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->q:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->r:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->s:J

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->t:J

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->u:Lcom/tnkfactory/ad/hl;

    new-instance v0, Lcom/tnkfactory/ad/ej;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ej;-><init>(Lcom/tnkfactory/ad/ei;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->v:Lcom/tnkfactory/ad/ServiceCallback;

    new-instance v0, Lcom/tnkfactory/ad/em;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/em;-><init>(Lcom/tnkfactory/ad/ei;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/en;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/en;-><init>(Lcom/tnkfactory/ad/ei;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/tnkfactory/ad/ei;->i:I

    iput v1, p0, Lcom/tnkfactory/ad/ei;->a:I

    iput v4, p0, Lcom/tnkfactory/ad/ei;->b:I

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->u:Lcom/tnkfactory/ad/hl;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;)I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ei;->b:I

    return v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;I)I
    .locals 0

    iput p1, p0, Lcom/tnkfactory/ad/ei;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/ei;->r:J

    return-wide p1
.end method

.method private a(II)Landroid/content/res/ColorStateList;
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

    aput p2, v2, v4

    aput p1, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a(Landroid/widget/RelativeLayout;)Landroid/widget/FrameLayout;
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/ei;->a(Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method private a(Lcom/tnkfactory/ad/ez;Landroid/graphics/Bitmap;)Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x44340000    # 720.0f

    const/high16 v4, 0x42c80000    # 100.0f

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/tnkfactory/ad/in;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v6, :cond_2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    :cond_0
    invoke-virtual {p1}, Lcom/tnkfactory/ad/ez;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/tnkfactory/ad/ei;->b(Landroid/widget/RelativeLayout;)V

    invoke-direct {p0, v1, p1}, Lcom/tnkfactory/ad/ei;->a(Landroid/widget/RelativeLayout;Lcom/tnkfactory/ad/ez;)V

    return-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v6, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    :cond_3
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private a(I)Lcom/tnkfactory/ad/BannerAdItem;
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v1

    new-instance v0, Lcom/tnkfactory/ad/BannerAdItem;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/tnkfactory/ad/BannerAdItem;-><init>(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    return-object p1
.end method

.method private a(Landroid/widget/FrameLayout;I)V
    .locals 6

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdBanner:Lcom/tnkfactory/ad/TnkAdBannerStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    if-le v1, v0, :cond_1

    int-to-float v0, v1

    const v1, 0x3d535a86    # 0.0516f

    mul-float/2addr v0, v1

    :goto_1
    float-to-int v1, v0

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-double v0, v1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/tnkfactory/ad/ei;->c:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tnkfactory/ad/ew;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ew;-><init>(Lcom/tnkfactory/ad/ei;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    const v1, 0x3daa9931    # 0.0833f

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method private a(Landroid/widget/RelativeLayout;Lcom/tnkfactory/ad/ez;)V
    .locals 7

    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/tnkfactory/ad/ez;->a()Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/BannerAdItem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v4}, Lcom/tnkfactory/ad/ez;->setClickable(Z)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#006B00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tnkfactory/ad/ei;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2}, Lcom/tnkfactory/ad/ez;->a()Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/BannerAdItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const-string v2, "#00BF00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#008F00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tnkfactory/ad/ei;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tnkfactory/ad/et;

    invoke-direct {v1, p0, v0, p1}, Lcom/tnkfactory/ad/et;-><init>(Lcom/tnkfactory/ad/ei;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tnkfactory/ad/ev;

    invoke-direct {v1, p0, p2}, Lcom/tnkfactory/ad/ev;-><init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/ez;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "#00BF00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ei;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ei;->a(Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Z)Z
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    :try_start_1
    iget-wide v2, p0, Lcom/tnkfactory/ad/ei;->s:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->s:J

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/tnkfactory/ad/ei;->s:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tnkfactory/ad/ei;->s:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/tnkfactory/ad/ei;->t:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    :goto_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tnkfactory/ad/ei;->s:J

    goto :goto_1

    :cond_5
    iget-wide v4, p0, Lcom/tnkfactory/ad/ei;->q:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->s:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ei;->s:J

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ei;)J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->r:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ei;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/ei;->t:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ei;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ei;I)Lcom/tnkfactory/ad/BannerAdItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ei;->a(I)Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/widget/RelativeLayout;)V
    .locals 5

    const v4, 0x6585ddf3

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ei;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tnkfactory/ad/ei;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/tnkfactory/ad/ei;)J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->t:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/ei;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/ei;->q:J

    return-wide p1
.end method

.method static synthetic d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ei;->a(Ljava/lang/String;)V

    return-void
.end method

.method private f()Lcom/tnkfactory/ad/BannerAdItem;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    iget v1, p0, Lcom/tnkfactory/ad/ei;->p:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v1

    new-instance v0, Lcom/tnkfactory/ad/BannerAdItem;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/tnkfactory/ad/BannerAdItem;-><init>(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tnkfactory/ad/ei;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tnkfactory/ad/ei;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    return-object v0
.end method

.method private g()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->j()V

    return-void
.end method

.method private h()V
    .locals 14

    iget v0, p0, Lcom/tnkfactory/ad/ei;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/ei;->k:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/ei;->l:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->f()Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tnkfactory/ad/ez;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/ez;->a()Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->h()V

    :cond_4
    new-instance v3, Lcom/tnkfactory/ad/ez;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-direct {v3, v2, v6, v4}, Lcom/tnkfactory/ad/ez;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdItem;Lcom/tnkfactory/ad/BannerAdListener;)V

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->i()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/tnkfactory/ad/ez;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->a()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->b()I

    move-result v2

    invoke-direct {p0, v3, v7}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ez;Landroid/graphics/Bitmap;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v10, 0x2

    const/16 v11, 0xa

    invoke-static {v7, v10, v11}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_6

    const/4 v10, 0x3

    const/16 v11, 0xa

    invoke-static {v7, v10, v11}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    if-nez v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    rem-long/2addr v10, v12

    long-to-int v2, v10

    add-int/lit8 v2, v2, 0x1

    :cond_7
    invoke-static {v2}, Lcom/tnkfactory/ad/eg;->d(I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    new-instance v9, Lcom/tnkfactory/ad/eo;

    invoke-direct {v9, p0, v1}, Lcom/tnkfactory/ad/eo;-><init>(Lcom/tnkfactory/ad/ei;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v7, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-static {v2}, Lcom/tnkfactory/ad/eg;->c(I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v10

    const-wide/16 v12, 0x5

    sub-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    new-instance v7, Lcom/tnkfactory/ad/ep;

    invoke-direct {v7, p0, v3}, Lcom/tnkfactory/ad/ep;-><init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/ez;)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/BannerAdItem;)V

    move-wide v0, v4

    :goto_1
    iput-wide v0, p0, Lcom/tnkfactory/ad/ei;->q:J

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ei;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/ei;->l:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/tnkfactory/ad/ez;

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-direct {v1, v0, v6, v2}, Lcom/tnkfactory/ad/ez;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdItem;Lcom/tnkfactory/ad/BannerAdListener;)V

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->i()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tnkfactory/ad/ez;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->a()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/tnkfactory/ad/BannerAdItem;->b()I

    move-result v0

    invoke-direct {p0, v1, v4}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ez;Landroid/graphics/Bitmap;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-static {v4, v7, v8}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v7, 0x3

    const/16 v8, 0xa

    invoke-static {v4, v7, v8}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    if-nez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0xa

    rem-long/2addr v4, v8

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1

    :cond_c
    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tnkfactory/ad/eq;

    invoke-direct {v4, p0, v1}, Lcom/tnkfactory/ad/eq;-><init>(Lcom/tnkfactory/ad/ei;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_d
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/tnkfactory/ad/ei;->a(Landroid/widget/RelativeLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/BannerAdItem;)V

    :cond_e
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method static synthetic h(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->k()V

    return-void
.end method

.method static synthetic i(Lcom/tnkfactory/ad/ei;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 10

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget v0, p0, Lcom/tnkfactory/ad/ei;->b:I

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/tnkfactory/ad/ei;->k:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tnkfactory/ad/ez;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/ez;->a()Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tnkfactory/ad/ez;

    iget-object v4, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-direct {v3, v4, v2, v5}, Lcom/tnkfactory/ad/ez;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdItem;Lcom/tnkfactory/ad/BannerAdListener;)V

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tnkfactory/ad/ez;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v2}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ez;Landroid/graphics/Bitmap;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v2, v9, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v2, v6, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-static {v6}, Lcom/tnkfactory/ad/eg;->d(I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tnkfactory/ad/er;

    invoke-direct {v4, p0, v1}, Lcom/tnkfactory/ad/er;-><init>(Lcom/tnkfactory/ad/ei;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-static {v6}, Lcom/tnkfactory/ad/eg;->c(I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/tnkfactory/ad/ei;->o:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    new-instance v4, Lcom/tnkfactory/ad/es;

    invoke-direct {v4, p0, v3}, Lcom/tnkfactory/ad/es;-><init>(Lcom/tnkfactory/ad/ei;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ei;->n:Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    iput-boolean v8, p0, Lcom/tnkfactory/ad/ei;->l:Z

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/tnkfactory/ad/ei;)J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->q:J

    return-wide v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tnkfactory/ad/ek;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ek;-><init>(Lcom/tnkfactory/ad/ei;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v0, v0, Lcom/tnkfactory/ad/hz;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tnkfactory/ad/fd;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tnkfactory/ad/in;->f(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method static synthetic k(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->h()V

    return-void
.end method

.method static synthetic l(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->e()V

    return-void
.end method

.method static synthetic m(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const-wide/16 v8, 0x12c

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iput v4, p0, Lcom/tnkfactory/ad/ei;->b:I

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ei;->k:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tnkfactory/ad/ei;->a:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->s:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tnkfactory/ad/ei;->s:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tnkfactory/ad/ei;->t:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    iput-wide v6, p0, Lcom/tnkfactory/ad/ei;->s:J

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ei;->l:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/tnkfactory/ad/ei;->l:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public a(Lcom/tnkfactory/ad/BannerAdItem;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/tnkfactory/ad/BannerAdItem;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/el;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/el;-><init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/BannerAdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/el;->start()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/BannerAdListener;->onShow()V

    goto :goto_0
.end method

.method public a(Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->h:Lcom/tnkfactory/ad/BannerAdListener;

    return-void
.end method

.method public a(Lcom/tnkfactory/ad/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/tnkfactory/ad/ei;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "BannerAdManager : Banner has been destroyed."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tnkfactory/ad/ei;->a:I

    if-ne v0, v4, :cond_2

    const-string v0, "BannerAdManager : Ad already requested."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tnkfactory/ad/ia;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BannerAdManager loadAds() : interval check and canceled."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ex;->a(I)V

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/tnkfactory/ad/ei;->a:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ei;->m:Lcom/tnkfactory/framework/vo/ValueObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/ei;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ei;->q:J

    iput-object p1, p0, Lcom/tnkfactory/ad/ei;->j:Ljava/lang/String;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/tnkfactory/ad/ei;->t:J

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->u:Lcom/tnkfactory/ad/hl;

    iget-object v1, p0, Lcom/tnkfactory/ad/ei;->e:Landroid/content/Context;

    iget v2, p0, Lcom/tnkfactory/ad/ei;->i:I

    iget-object v3, p0, Lcom/tnkfactory/ad/ei;->v:Lcom/tnkfactory/ad/ServiceCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput v4, p0, Lcom/tnkfactory/ad/ei;->b:I

    iget-wide v0, p0, Lcom/tnkfactory/ad/ei;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ei;->s:J

    :cond_0
    iput-boolean v4, p0, Lcom/tnkfactory/ad/ei;->k:Z

    iput-boolean v4, p0, Lcom/tnkfactory/ad/ei;->l:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/ei;->b:I

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/ei;->w:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/ei;->x:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/tnkfactory/ad/ei;->g:Lcom/tnkfactory/ad/ex;

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/tnkfactory/ad/ei;->f:Landroid/view/ViewGroup;

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ei;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
