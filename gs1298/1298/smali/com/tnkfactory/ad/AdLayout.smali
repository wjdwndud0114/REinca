.class public abstract Lcom/tnkfactory/ad/AdLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final a:Landroid/graphics/Bitmap;


# instance fields
.field private b:Landroid/widget/ImageButton;

.field protected i:Landroid/content/Context;

.field protected j:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/tnkfactory/ad/da;->a:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/tnkfactory/ad/da;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/tnkfactory/ad/AdLayout;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->i:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->j:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tnkfactory/ad/AdLayout;->i:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tnkfactory/ad/ad;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ad;-><init>(Lcom/tnkfactory/ad/AdLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdLayout;->a()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v0, v0, Lcom/tnkfactory/ad/hz;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdLayout;->getContext()Landroid/content/Context;

    move-result-object v1

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

.method static synthetic b(Lcom/tnkfactory/ad/AdLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdLayout;->b()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(II)V
    .locals 6

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdLayout;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    if-le p1, p2, :cond_1

    int-to-float v0, p1

    const v1, 0x3d535a86    # 0.0516f

    mul-float/2addr v0, v1

    :goto_1
    float-to-int v1, v0

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    int-to-double v0, v1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/tnkfactory/ad/AdLayout;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tnkfactory/ad/ac;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ac;-><init>(Lcom/tnkfactory/ad/AdLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    int-to-float v0, p1

    const v1, 0x3daa9931    # 0.0833f

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->j:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->j:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->j:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdLayout;->j:Landroid/app/ProgressDialog;

    return-void
.end method

.method public abstract parentLayout()Lcom/tnkfactory/ad/AdLayout;
.end method

.method public abstract removeFromParent()V
.end method
