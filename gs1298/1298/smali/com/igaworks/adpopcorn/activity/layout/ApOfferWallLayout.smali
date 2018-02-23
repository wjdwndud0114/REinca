.class public Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;


# instance fields
.field private A:Lcom/igaworks/adpopcorn/activity/a/a/b;

.field private B:Z

.field private C:Landroid/widget/ImageView;

.field private D:Lcom/igaworks/adpopcorn/cores/d;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Landroid/os/Handler;

.field private K:Ljava/lang/Runnable;

.field private L:I

.field private M:I

.field private N:Z

.field private final O:I

.field private final P:I

.field private final Q:I

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Z

.field private W:Lcom/igaworks/adpopcorn/cores/model/d;

.field a:Landroid/view/View$OnClickListener;

.field private final aA:I

.field private aB:Landroid/app/Activity;

.field private aC:Z

.field private aD:Landroid/webkit/WebView;

.field private aE:Ljava/util/ArrayList;

.field private aF:Ljava/util/ArrayList;

.field private aG:I

.field private aa:Landroid/app/Dialog;

.field private ab:Landroid/app/Dialog;

.field private ac:Ljava/util/HashMap;

.field private ad:Lcom/igaworks/adpopcorn/cores/c/a;

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:I

.field private ak:Landroid/widget/LinearLayout;

.field private al:Ljava/lang/String;

.field private am:Lcom/igaworks/adpopcorn/activity/b/b;

.field private an:Lcom/igaworks/adpopcorn/activity/layout/c;

.field private ao:Landroid/widget/LinearLayout;

.field private ap:Landroid/widget/ViewFlipper;

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Lcom/igaworks/adpopcorn/activity/b/d$a;

.field private au:Lcom/igaworks/adpopcorn/activity/b/d$a;

.field private av:Lcom/igaworks/adpopcorn/activity/b/d$b;

.field private aw:I

.field private ax:Z

.field private ay:Z

.field private final az:Ljava/lang/String;

.field b:Landroid/widget/AdapterView$OnItemClickListener;

.field c:Landroid/widget/AbsListView$OnScrollListener;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/content/Context;

.field private h:D

.field private i:D

.field private j:Lcom/igaworks/adpopcorn/cores/common/f;

.field private k:Lcom/igaworks/adpopcorn/cores/c;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/igaworks/adpopcorn/activity/a/a/a;

.field private q:Lcom/igaworks/adpopcorn/activity/c/c;

.field private r:Lcom/igaworks/adpopcorn/activity/c/c;

.field private s:Ljava/util/List;

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/ArrayList;

.field private v:Ljava/util/ArrayList;

.field private w:Lcom/igaworks/adpopcorn/cores/model/d;

.field private x:Lcom/igaworks/adpopcorn/cores/model/d;

.field private y:Ljava/util/ArrayList;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ApOfferWallLayout"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d:Ljava/lang/String;

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->N:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->O:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->P:I

    const/16 v0, 0x7d

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->Q:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/d;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iput v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aj:I

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->al:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ay:Z

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->az:Ljava/lang/String;

    const/16 v0, 0x272a

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aA:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aC:Z

    iput v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$1;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$1;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$12;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$12;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ApOfferWallLayout"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d:Ljava/lang/String;

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->N:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->O:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->P:I

    const/16 v0, 0x7d

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->Q:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/d;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aj:I

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->al:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ay:Z

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->az:Ljava/lang/String;

    const/16 v0, 0x272a

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aA:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aC:Z

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$1;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$1;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$12;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$12;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method private A()V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ai:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->A:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$31;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$31;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic A(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    return-void
.end method

.method static synthetic B(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a()V

    return-void
.end method

.method static synthetic C(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aB:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic D(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k()V

    return-void
.end method

.method static synthetic E(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    return v0
.end method

.method static synthetic F(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/b/d$a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    return-object v0
.end method

.method static synthetic G(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q()V

    return-void
.end method

.method static synthetic H(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/b/b;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    return-object v0
.end method

.method static synthetic I(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic J(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s()V

    return-void
.end method

.method static synthetic K(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic L(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    return-object v0
.end method

.method static synthetic M(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic N(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aF:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic O(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    return v0
.end method

.method static synthetic P(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Q(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aC:Z

    return v0
.end method

.method static synthetic R(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic S(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k:Lcom/igaworks/adpopcorn/cores/c;

    return-object v0
.end method

.method static synthetic T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic U(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h()V

    return-void
.end method

.method static synthetic V(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w()V

    return-void
.end method

.method static synthetic W(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->al:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic X(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    return-void
.end method

.method private a()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aB:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aB:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 12

    const/16 v5, 0x3e9

    const/16 v2, 0x3e8

    const/16 v1, 0x3ea

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    const-string v4, ""

    const-string v0, ""

    const-string v0, ""

    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->F:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eq p1, v2, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_b

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "click_already_installed_application_ok_btn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;

    invoke-direct {v7, p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ne p1, v5, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->G:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->v:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->E:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->D:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->k:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->t:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aS:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_b
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_d

    :cond_c
    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_d
    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_3

    :try_start_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->L:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$24;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$24;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$25;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$25;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method

.method private a(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackParticipate result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ResultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->n()Z

    move-result v3

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ar:Z

    if-eqz v2, :cond_6

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "click_participate_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel_code"

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V

    goto/16 :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    const/16 v0, 0x7d0

    if-ne v1, v0, :cond_9

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->z:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Lcom/igaworks/adpopcorn/activity/b/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Lcom/igaworks/adpopcorn/cores/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ah:Z

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 13

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v12}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackParticipateCampaign result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResultCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    :goto_1
    const-string v4, "HideBrowser"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "HideBrowser"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "HideBrowser"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    :goto_2
    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "ApOfferWallLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callbackParticipateCampaign success, useHiddenBrowser = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", redirectURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->N:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->N:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v12}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v4, ""

    iput-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Z)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    const-string v2, "participateFlag"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bd:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->A:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$33;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$33;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$35;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$35;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_8
    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    :goto_3
    :try_start_5
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->y:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    const/16 v0, 0x3e7

    if-eq v3, v0, :cond_e

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aD:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v12}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-class v3, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cKey"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ptid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "averageRating"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "landscapeImageURL"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clickAction"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignDescription"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "iconImageURL"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignName"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "numberOfDownloads"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirectURL"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoURL"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ADType"

    move/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AutoRedirect"

    move/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromVideoAPI"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rewardName"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skipAllowSeconds"

    move/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoImpressionURL"

    move-object/from16 v0, p17

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "moreClickReportURL"

    move-object/from16 v0, p18

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PartiTypeCode"

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignCondition"

    move-object/from16 v0, p19

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const/4 v5, 0x1

    const v6, 0x3ecccccd    # 0.4f

    new-instance v8, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;

    invoke-direct {v8, p0, p3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v9

    const/4 v10, 0x0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IFLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aC:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/util/List;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ak:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ak:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendCompleteRewardRequest installer = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "auth"

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "network"

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sign"

    invoke-static {v2, v1}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installer"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ar:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "ApOfferWallLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPermission <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> : GRANTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "ApOfferWallLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPermission : <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> : DENIED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private b(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x17

    const/16 v3, 0x7d

    const/16 v2, 0x32

    if-eqz p2, :cond_9

    :try_start_0
    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-nez v0, :cond_1

    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-ne v0, v3, :cond_0

    :cond_2
    if-ne p1, v5, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "click_participate_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel_code"

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-ne v0, v4, :cond_0

    :cond_5
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-ne v0, v4, :cond_7

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    const/16 v0, 0x3f5

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->N:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "click_participate_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel_code"

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    if-ne p1, v5, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "click_participate_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel_code"

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-ne v0, v3, :cond_0

    :cond_b
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-ne v0, v4, :cond_0

    :cond_d
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z()V

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-eq v0, v2, :cond_f

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->L:I

    if-ne v0, v3, :cond_0

    :cond_f
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A()V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Z)V

    return-void
.end method

.method private b(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 8

    const/16 v7, 0x802

    const/16 v4, 0x7d0

    const/4 v6, 0x1

    const/16 v5, 0x17

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardAppInstall result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ResultMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-ne v0, v5, :cond_3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3ec

    :try_start_1
    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-ne v1, v5, :cond_6

    if-ne v2, v4, :cond_5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-ne v2, v7, :cond_0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    const-string v2, "participateFlag"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    if-ne v2, v4, :cond_7

    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto/16 :goto_0

    :cond_7
    if-ne v2, v7, :cond_8

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    const-string v2, "participateFlag"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$28;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$28;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v8

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->h:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k:Lcom/igaworks/adpopcorn/cores/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    const-string v2, "sign1 : true"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/h;->a(Landroid/content/Context;)V

    :cond_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    if-ne v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_a

    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->specialOfferVisibility:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_c
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/d;->h()I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exceptionPermissionList : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    and-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "ApOfferWallLayout"

    const-string v4, "ExceptionPermissionList has GET_ACCOUNT"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->M:I

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aj:I

    return-void
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ae:Z

    return-void
.end method

.method private c(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardAppExecute result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ResultMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d0

    if-ne v2, v1, :cond_2

    const/16 v0, 0x3ed

    :try_start_1
    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x802

    if-ne v2, v1, :cond_3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    const-string v2, "participateFlag"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private c(Z)V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->K:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aM:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$20;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$20;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$21;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$21;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/d;->h()I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exceptionPermissionList : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    and-int/lit8 v2, v2, 0x8

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "ApOfferWallLayout"

    const-string v4, "ExceptionPermissionList has WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    return-void
.end method

.method private d(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 23

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Z)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Z)V

    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "ApOfferWallLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callbackVideoAdDetailInfoRequest result = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/b/d;->a(Ljava/lang/String;)Lcom/igaworks/adpopcorn/cores/model/e;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->b()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->j()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->a()I

    move-result v16

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->m()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->p()I

    move-result v19

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->n()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->q()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->k()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v22}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->u:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->showProgressDialog(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    iput-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ae:Z

    iput-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aj:I

    if-le v0, v2, :cond_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "ApOfferWallLayout"

    const-string v3, "initCampaignLoading"

    const/4 v4, 0x3

    invoke-static {v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->al:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ag:Z

    return-void
.end method

.method private e(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 2

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Lcom/igaworks/adpopcorn/cores/model/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$37;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$37;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openWebViewBrowser = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    const-string v0, ""

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->x:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$29;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$29;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$30;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$30;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    return-object v0
.end method

.method private f()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Z)V

    return-void
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/d;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    return-object v0
.end method

.method private g()V
    .locals 10

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    iput v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ar:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ag:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    iput v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/d;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aF:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setPadding(IIII)V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "isAdPopcornUser"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r()V

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "adpopcorn_sdk_flag"

    const-string v4, "adpopcorn_last_visit_day"

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "adpopcorn_choice_impression_sp"

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "adpopcorn_sdk_flag"

    const-string v4, "adpopcorn_last_visit_day"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Z)V

    return-void
.end method

.method static synthetic h(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 1

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/checkcampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->E:Ljava/lang/String;

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/joincampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeinstallcampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->G:Ljava/lang/String;

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/getrewardvideodetail"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->H:Ljava/lang/String;

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeexecutecampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->I:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/checkcampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->E:Ljava/lang/String;

    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/joincampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    const-string v0, "https://rpi.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeinstallcampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->G:Ljava/lang/String;

    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/getrewardvideodetail"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->H:Ljava/lang/String;

    const-string v0, "https://rpi.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeexecutecampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 8

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    if-eqz v0, :cond_0

    const-string v0, "#a6000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setBackgroundColor(I)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    const-string v2, "#eeeeee"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "BOTTOM_BAR_HEIGHT"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l()Lcom/igaworks/adpopcorn/activity/layout/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_SHADOW"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setPadding(IIII)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setVisibility(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igaworks/adpopcorn/activity/c/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/c/c;->setPadding(IIII)V

    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    if-eqz v0, :cond_a

    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeNumColumns:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeNumColumns:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    :goto_1
    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeHorizontalSpacing:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeHorizontalSpacing:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    :goto_2
    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeVerticalSpacing:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->landscapeVerticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    :goto_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/igaworks/adpopcorn/activity/a/a/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/activity/a/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/igaworks/adpopcorn/cores/common/f;ZZ)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "TOP_BAR_HEIGHT"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v3

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v1

    float-to-int v1, v1

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    goto/16 :goto_3

    :cond_b
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igaworks/adpopcorn/activity/c/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setSelector(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->layoutResId:I

    if-eqz v0, :cond_f

    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitNumColumns:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitNumColumns:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    :goto_5
    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitHorizontalSpacing:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitHorizontalSpacing:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    :goto_6
    sget v0, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitVerticalSpacing:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    sget v1, Lcom/igaworks/adpopcorn/style/APCustomOfferwallLayout;->portraitVerticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    :goto_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/igaworks/adpopcorn/activity/a/a/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/activity/a/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/igaworks/adpopcorn/cores/common/f;ZZ)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/c/c;->setPadding(IIII)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setNumColumns(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q:Lcom/igaworks/adpopcorn/activity/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/c;->setVerticalSpacing(I)V

    goto :goto_7
.end method

.method static synthetic j(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    return v0
.end method

.method private j()Landroid/widget/LinearLayout;
    .locals 24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "BOTTOM_BAR_TEXT_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "BOTTOM_BAR_ICON_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v14

    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "BOTTOM_BAR_HEIGHT"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "BOTTOM_BAR_BG_COLOR"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    const-wide/high16 v4, 0x403b000000000000L    # 27.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$5;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/ic_ques.png"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->N:Ljava/lang/String;

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v3, "ja"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "en"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    new-instance v3, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$6;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v8, v10

    double-to-int v5, v8

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$7;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v7, "igaworks/adpopcorn/res/ic_lock.png"

    const/4 v8, 0x0

    invoke-static {v5, v7, v4, v8}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v14, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v9, -0x1

    invoke-direct {v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v9, v5, Lcom/igaworks/adpopcorn/cores/common/f;->aj:Ljava/lang/String;

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    move-wide/from16 v18, v0

    move v12, v6

    invoke-static/range {v8 .. v19}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const-string v5, "ja"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "en"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v10, v12

    double-to-int v7, v10

    int-to-float v7, v7

    invoke-virtual {v8, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v5, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$8;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v10, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x15

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v11, v5, Lcom/igaworks/adpopcorn/cores/common/f;->ak:Ljava/lang/String;

    const/16 v12, 0x13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    move-wide/from16 v20, v0

    move v14, v6

    invoke-static/range {v10 .. v21}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v22

    :cond_4
    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ad:Lcom/igaworks/adpopcorn/cores/c/a;

    return-object v0
.end method

.method private k()V
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v1, 0x1030011

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    :cond_0
    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/c;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    invoke-direct/range {v1 .. v10}, Lcom/igaworks/adpopcorn/activity/b/c;-><init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZ)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$10;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$10;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()Lcom/igaworks/adpopcorn/activity/layout/a;
    .locals 6

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/activity/layout/a;-><init>(Landroid/content/Context;DD)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ak:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ak:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic l(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    return-object v0
.end method

.method private m()Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v6, 0x4

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/activity/layout/b;-><init>(Landroid/content/Context;DD)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$11;

    invoke-direct {v3, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$11;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$13;

    invoke-direct {v3, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$13;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ay:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private n()Landroid/view/View;
    .locals 5

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/shadow.png"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic n(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    return-object v0
.end method

.method private o()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_5
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_d

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/c;->a(Ljava/util/List;)V

    :cond_a
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    :cond_b
    move v6, v1

    :goto_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_14

    :cond_c
    :goto_2
    return-void

    :cond_d
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->p()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->h()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_12

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    if-nez v3, :cond_11

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_11
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_12
    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_13
    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_14
    if-nez v6, :cond_15

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    if-nez v0, :cond_15

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    :cond_15
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method static synthetic p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    return-object v0
.end method

.method private p()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "adpopcorn_choice_impression_sp"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_3

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    new-instance v6, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$14;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$14;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adpopcorn/activity/b/b;-><init>(Landroid/content/Context;IILcom/igaworks/adpopcorn/cores/model/d;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->show()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "impression_adpopcorn_choice_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$15;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$15;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "adpopcorn_choice_impression_sp"

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/view/View;Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/d;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    const-string v2, "Today AdpopcornChoiceAd already showed"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->C:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/view/View;Lcom/igaworks/adpopcorn/cores/model/d;)V

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->notifyDataSetInvalidated()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic q(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic r(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->E:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$17;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$17;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method static synthetic s(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x:Lcom/igaworks/adpopcorn/cores/model/d;

    return-object v0
.end method

.method private s()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aE:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    const-string v1, "impression_special_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aE:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic t(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A:Lcom/igaworks/adpopcorn/activity/a/a/b;

    return-object v0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private u()Landroid/view/View;
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    :cond_0
    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/c;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v8

    iget-boolean v9, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    new-instance v11, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$18;

    invoke-direct {v11, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$18;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-direct/range {v1 .. v11}, Lcom/igaworks/adpopcorn/activity/layout/c;-><init>(Landroid/content/Context;IDDZZLcom/igaworks/adpopcorn/cores/common/f;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ao:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->an:Lcom/igaworks/adpopcorn/activity/layout/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ap:Landroid/widget/ViewFlipper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method static synthetic u(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ah:Z

    return v0
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ae:Z

    return v0
.end method

.method private w()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    const-string v1, "Test Mode"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->n:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic w(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ag:Z

    return v0
.end method

.method private x()V
    .locals 0

    return-void
.end method

.method static synthetic x(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    return v0
.end method

.method static synthetic y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    return v0
.end method

.method private y()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic z(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aj:I

    return v0
.end method

.method private z()V
    .locals 7

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adpopcorn/activity/b/a;-><init>(Landroid/content/Context;ILcom/igaworks/adpopcorn/cores/model/d;Lcom/igaworks/adpopcorn/cores/common/f;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$26;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$26;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W:Lcom/igaworks/adpopcorn/cores/model/d;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a:Landroid/view/View$OnClickListener;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adpopcorn/activity/b/a;-><init>(Landroid/content/Context;ILcom/igaworks/adpopcorn/cores/model/d;Lcom/igaworks/adpopcorn/cores/common/f;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$27;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$27;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->K:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->au:Lcom/igaworks/adpopcorn/activity/b/d$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->au:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->au:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->au:Lcom/igaworks/adpopcorn/activity/b/d$a;

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ac:Ljava/util/HashMap;

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p:Lcom/igaworks/adpopcorn/activity/a/a/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->a()V

    :cond_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aD:Landroid/webkit/WebView;

    :cond_7
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/a;->a()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->c()V

    invoke-static {p0}, Lcom/igaworks/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initOfferwallLayout(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ax:Z

    iput-boolean p2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ay:Z

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f()V

    return-void
.end method

.method public isLandscapeMode(Landroid/content/Context;Z)Z
    .locals 2

    if-eqz p2, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aq:Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x272a

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    const-string v2, "onActivityResult REQUEST_CODE_PICK_ACCOUNT"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResult >> name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v1, v0

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "ApOfferWallLayout"

    const-string v2, "onActivityResult >> RESULT_CANCELED"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public onCustomConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v0, v6

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v2, v12

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    mul-double/2addr v4, v12

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setPadding(IIII)V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    mul-double/2addr v2, v6

    double-to-int v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e:I

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i:D

    iput v9, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ai:I

    iput-boolean v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->af:Z

    iput-boolean v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B:Z

    iput-boolean v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ah:Z

    iput v9, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aG:I

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aa:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/b;->dismiss()V

    iput-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->am:Lcom/igaworks/adpopcorn/activity/b/b;

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->ab:Landroid/app/Dialog;

    :cond_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->invalidate()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i()V

    invoke-virtual {p0, v9}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->resume(Z)V

    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 12

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    :try_start_0
    array-length v3, p2

    if-lt v2, v3, :cond_2

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aN:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aO:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aQ:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$3;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$3;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$4;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$4;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    aget-object v3, p2, v2

    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p2, v2

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onRequestPermissionsResult >> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    aget v3, p3, v2

    if-eq v3, v7, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, p2, v2

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v4, "ApOfferWallLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onRequestPermissionsResult >> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    aget v3, p3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v7, :cond_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->resume(Z)V

    return-void
.end method

.method public resume(Z)V
    .locals 12

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "adpopcorn_parameter"

    const-string v3, "check_user_agreement"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bY:Ljava/lang/String;

    const-string v0, ""

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TERMS_OF_USE_OFFERWALL"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->cc:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->cb:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$34;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$34;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$38;

    invoke-direct {v9, p0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$38;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bZ:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ca:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v2, "adpopcorn_parameter"

    const-string v3, "asked_get_account_permission"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const-string v3, "adpopcorn_parameter"

    const-string v4, "asked_get_account_permission"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->D:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aN:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aO:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aQ:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$39;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$39;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$40;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$40;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aN:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aP:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$41;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$41;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bV:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bW:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    const v5, 0x3ecccccd    # 0.4f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$42;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$42;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$2;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$2;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->at:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public setApOfferWallOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aq:Z

    return-void
.end method

.method public setCustomViewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aC:Z

    return-void
.end method

.method public setDialogMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->as:Z

    return-void
.end method

.method public setOfferwallActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aB:Landroid/app/Activity;

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->aw:I

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/d$b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0, p2}, Lcom/igaworks/adpopcorn/activity/b/d$b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->av:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
