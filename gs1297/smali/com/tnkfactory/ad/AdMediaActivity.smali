.class public Lcom/tnkfactory/ad/AdMediaActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Lcom/tnkfactory/ad/VideoAdListener;

.field private static b:Lcom/tnkfactory/ad/ir;


# instance fields
.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/tnkfactory/ad/AdItem;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/tnkfactory/ad/VideoAdListener;

.field private j:Lcom/tnkfactory/ad/ir;

.field private k:Lcom/tnkfactory/ad/hl;

.field private l:Lcom/tnkfactory/ad/iq;

.field private final m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tnkfactory/ad/AdMediaActivity;->a:Lcom/tnkfactory/ad/VideoAdListener;

    sput-object v0, Lcom/tnkfactory/ad/AdMediaActivity;->b:Lcom/tnkfactory/ad/ir;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->c:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->f:Z

    iput-boolean v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->g:Z

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->i:Lcom/tnkfactory/ad/VideoAdListener;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->j:Lcom/tnkfactory/ad/ir;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->k:Lcom/tnkfactory/ad/hl;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->l:Lcom/tnkfactory/ad/iq;

    new-instance v0, Lcom/tnkfactory/ad/ct;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ct;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->m:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/tnkfactory/ad/AdMediaActivity;->a:Lcom/tnkfactory/ad/VideoAdListener;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->i:Lcom/tnkfactory/ad/VideoAdListener;

    sget-object v0, Lcom/tnkfactory/ad/AdMediaActivity;->b:Lcom/tnkfactory/ad/ir;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->j:Lcom/tnkfactory/ad/ir;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    const v1, -0xefeff0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdMediaActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "extra_aditem"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    const-string v0, "Y"

    const-string v2, "extra_ivideo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->f:Z

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->k:Lcom/tnkfactory/ad/hl;

    iget-boolean v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "extra_video_rect"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra_2button"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tnkfactory/ad/cv;

    invoke-direct {v2, p0, v3}, Lcom/tnkfactory/ad/cv;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/cj;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/cm;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/AdItem;)V

    return-void

    :cond_0
    const-string v0, "Y"

    const-string v2, "extra_repeat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->g:Z

    const-string v0, "extra_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    iget v0, v0, Lcom/tnkfactory/ad/AdItem;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/tnkfactory/ad/cu;

    invoke-direct {v0, p0, v3}, Lcom/tnkfactory/ad/cu;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/cj;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/cm;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/cn;

    invoke-direct {v0, p0, v3}, Lcom/tnkfactory/ad/cn;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/cj;)V

    goto :goto_1
.end method

.method private a(Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tnkfactory/ad/AdItem;->getFeatureImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tnkfactory/ad/cr;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/cr;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/AdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cr;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/AdMediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->d()V

    return-void
.end method

.method public static a(Lcom/tnkfactory/ad/VideoAdListener;)V
    .locals 0

    sput-object p0, Lcom/tnkfactory/ad/AdMediaActivity;->a:Lcom/tnkfactory/ad/VideoAdListener;

    return-void
.end method

.method private a(Lcom/tnkfactory/ad/cm;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v7, 0x1

    invoke-static {p0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v4, v0, v7

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/iv;

    iget-object v2, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/iv;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/cm;)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/iv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Lcom/tnkfactory/ad/iv;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v7}, Lcom/tnkfactory/ad/iv;->setFocusable(Z)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/iv;->requestFocus()Z

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->l:Lcom/tnkfactory/ad/iq;

    return-void
.end method

.method private a(Lcom/tnkfactory/ad/cm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, -0x1

    const/4 v9, 0x1

    invoke-static {p0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v4, v0, v9

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/jd;

    iget-object v2, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    const-string v1, "Y"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/tnkfactory/ad/jd;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/cm;Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Lcom/tnkfactory/ad/jd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Lcom/tnkfactory/ad/jd;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v9}, Lcom/tnkfactory/ad/jd;->setFocusable(Z)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jd;->requestFocus()Z

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->l:Lcom/tnkfactory/ad/iq;

    return-void
.end method

.method public static a(Lcom/tnkfactory/ad/ir;)V
    .locals 0

    sput-object p0, Lcom/tnkfactory/ad/AdMediaActivity;->b:Lcom/tnkfactory/ad/ir;

    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/AdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tnkfactory/ad/AdMediaActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->i:Lcom/tnkfactory/ad/VideoAdListener;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->c()V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->e:Lcom/tnkfactory/ad/AdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/tnkfactory/ad/cj;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/cj;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tnkfactory/ad/AdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    new-instance v3, Lcom/tnkfactory/ad/ck;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/ck;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/hl;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->k:Lcom/tnkfactory/ad/hl;

    return-object v0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->b()V

    new-instance v0, Lcom/tnkfactory/ad/cl;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/cl;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cl;->start()V

    return-void
.end method

.method static synthetic f(Lcom/tnkfactory/ad/AdMediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->e()V

    return-void
.end method

.method static synthetic g(Lcom/tnkfactory/ad/AdMediaActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/ir;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->j:Lcom/tnkfactory/ad/ir;

    return-object v0
.end method

.method static synthetic j(Lcom/tnkfactory/ad/AdMediaActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/iq;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdMediaActivity;->l:Lcom/tnkfactory/ad/iq;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "## AdMediaActivity onCreate()"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_0

    const v0, 0x10300f1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdMediaActivity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->getRequestedOrientation()I

    move-result v1

    const-string v2, "extra_orientation"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## AdMediaActivity orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    if-ne v0, v4, :cond_1

    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2

    const/16 v0, 0xc

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/tnkfactory/ad/AdMediaActivity;->setRequestedOrientation(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdMediaActivity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    if-eq v1, v7, :cond_2

    invoke-virtual {p0, v5}, Lcom/tnkfactory/ad/AdMediaActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->a()V

    goto :goto_1
.end method
