.class Lcom/tnkfactory/ad/iv;
.super Lcom/tnkfactory/ad/iq;


# instance fields
.field private a:Lcom/tnkfactory/ad/cm;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/tnkfactory/ad/VideoAdItem;

.field private h:Z

.field private k:Lcom/tnkfactory/ad/jc;

.field private l:Lcom/tnkfactory/ad/jn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/cm;)V
    .locals 2

    const v0, -0xefeff0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/iq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    iput-object v1, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/tnkfactory/ad/iv;->c:I

    iput v0, p0, Lcom/tnkfactory/ad/iv;->d:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/tnkfactory/ad/iv;->e:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/tnkfactory/ad/iv;->f:I

    iput-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/iv;->h:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iput-object v1, p0, Lcom/tnkfactory/ad/iv;->l:Lcom/tnkfactory/ad/jn;

    new-instance v0, Lcom/tnkfactory/ad/VideoAdItem;

    invoke-direct {v0, p2}, Lcom/tnkfactory/ad/VideoAdItem;-><init>(Lcom/tnkfactory/ad/AdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iput p3, p0, Lcom/tnkfactory/ad/iv;->e:I

    iput p4, p0, Lcom/tnkfactory/ad/iv;->f:I

    iput-object p5, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/iv;)Lcom/tnkfactory/ad/cm;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/cm;->a(Lcom/tnkfactory/ad/ImageAdItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/iv;->h:Z

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/iv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tnkfactory/ad/iv;->h:Z

    return p1
.end method

.method private b()V
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/iv;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->g()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tnkfactory/ad/iv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/iv;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/iv;)Lcom/tnkfactory/ad/VideoAdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/cm;->a(I)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->a:Lcom/tnkfactory/ad/cm;

    invoke-interface {v0}, Lcom/tnkfactory/ad/cm;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->h()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/iv;->h:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->c()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;->noClose:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->c()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->e()V

    return-void
.end method

.method static synthetic f(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->i:Landroid/content/Context;

    iget v1, p0, Lcom/tnkfactory/ad/iv;->e:I

    iget v2, p0, Lcom/tnkfactory/ad/iv;->f:I

    const/16 v3, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/jn;->a(Landroid/content/Context;III)Lcom/tnkfactory/ad/jn;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/iv;->l:Lcom/tnkfactory/ad/jn;

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->l:Lcom/tnkfactory/ad/jn;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jn;->getMediaView()Lcom/tnkfactory/ad/fu;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tnkfactory/ad/iw;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/iw;-><init>(Lcom/tnkfactory/ad/iv;)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fu;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iget-object v1, v1, Lcom/tnkfactory/ad/VideoAdItem;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fu;->setPath(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->l:Lcom/tnkfactory/ad/jn;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jn;->getCloseButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tnkfactory/ad/ix;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ix;-><init>(Lcom/tnkfactory/ad/iv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/iv;->removeAllViews()V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->l:Lcom/tnkfactory/ad/jn;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iv;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->c()V

    return-void
.end method

.method private h()V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->i:Landroid/content/Context;

    iget v1, p0, Lcom/tnkfactory/ad/iv;->e:I

    iget v2, p0, Lcom/tnkfactory/ad/iv;->f:I

    iget-object v3, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iget v3, v3, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    iget-object v4, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iget v4, v4, Lcom/tnkfactory/ad/VideoAdItem;->h:I

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/jc;->a(Landroid/content/Context;IIIII)Lcom/tnkfactory/ad/jc;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jc;->getReplayButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tnkfactory/ad/iy;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/iy;-><init>(Lcom/tnkfactory/ad/iv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jc;->getCloseButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tnkfactory/ad/iz;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/iz;-><init>(Lcom/tnkfactory/ad/iv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jc;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/iv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/VideoAdItem;->getAppId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tnkfactory/ad/jc;->setIconImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/VideoAdItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/jc;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iget-object v1, v1, Lcom/tnkfactory/ad/VideoAdItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/jc;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    iget v1, v1, Lcom/tnkfactory/ad/VideoAdItem;->g:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/jc;->setStarRateImage(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/iv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/VideoAdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/VideoAdItem;->isWebContents()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v0, v1, v7}, Lcom/tnkfactory/ad/jc;->a(Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    iget v1, p0, Lcom/tnkfactory/ad/iv;->c:I

    iget v2, p0, Lcom/tnkfactory/ad/iv;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/jc;->b(II)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    new-instance v1, Lcom/tnkfactory/ad/ja;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ja;-><init>(Lcom/tnkfactory/ad/iv;)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/jc;->setGoClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/iv;->removeAllViews()V

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iv;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-ge v0, v3, :cond_3

    move v0, v6

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/tnkfactory/ad/jc;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->g:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/VideoAdItem;->isWebContents()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/tnkfactory/ad/jc;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/tnkfactory/ad/jc;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->d()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iv;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCardImage(Landroid/graphics/Bitmap;)V
    .locals 3

    const/16 v2, 0xa

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/iv;->c:I

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/graphics/Bitmap;II)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/iv;->d:I

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iv;->k:Lcom/tnkfactory/ad/jc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jc;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/iv;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
