.class public Lcom/tnkfactory/ad/NativeAdItem;
.super Lcom/tnkfactory/ad/ImageAdItem;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final O:Ljava/util/WeakHashMap;

.field public static final SIZE_LARGE:I = 0x0

.field public static final SIZE_MIDDLE:I = 0x8

.field public static final SIZE_SMALL:I = 0x10

.field public static final SIZE_TINY:I = 0x18

.field public static final STATE_LOADED:I = 0x2

.field public static final STATE_NOT_LOADED:I = 0x0

.field public static final STATE_REQUESTING:I = 0x1

.field public static final STYLE_BANNER_LANDSCAPE:I = 0x9

.field public static final STYLE_ICON:I = 0x4

.field public static final STYLE_LANDSCAPE:I = 0x2

.field public static final STYLE_PORTRAIT:I = 0x1

.field public static final STYLE_SQUARE:I = 0x3

.field public static final STYLE_TEXT_ONLY:I


# instance fields
.field private P:I

.field private Q:I

.field private R:Landroid/graphics/Bitmap;

.field private S:Ljava/lang/String;

.field private T:Landroid/graphics/Bitmap;

.field private U:J

.field private V:Landroid/content/Context;

.field private W:Lcom/tnkfactory/ad/NativeAdListener;

.field private X:Lcom/tnkfactory/ad/hl;

.field private Y:Landroid/view/ViewGroup;

.field private Z:Landroid/view/View;

.field private aa:Lcom/tnkfactory/ad/gi;

.field private ab:Z

.field private final ac:Lcom/tnkfactory/ad/ServiceCallback;

.field private ad:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/NativeAdItem;->O:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/tnkfactory/ad/gh;

    invoke-direct {v0}, Lcom/tnkfactory/ad/gh;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/NativeAdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tnkfactory/ad/NativeAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tnkfactory/ad/NativeAdItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/NativeAdListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/tnkfactory/framework/vo/ValueObject;Lcom/tnkfactory/ad/NativeAdListener;Lcom/tnkfactory/ad/hl;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    iput-boolean v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    new-instance v0, Lcom/tnkfactory/ad/ge;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ge;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ac:Lcom/tnkfactory/ad/ServiceCallback;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    :goto_0
    iput v4, p0, Lcom/tnkfactory/ad/NativeAdItem;->k:I

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iput p2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iput-object p4, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    iput-object p5, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    iput v4, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/NativeAdListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    iput-boolean v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    new-instance v0, Lcom/tnkfactory/ad/ge;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ge;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ac:Lcom/tnkfactory/ad/ServiceCallback;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->k:I

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iput-object p2, p0, Lcom/tnkfactory/ad/NativeAdItem;->J:Ljava/lang/String;

    iput p3, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iput-object p4, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    iput-boolean v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    new-instance v0, Lcom/tnkfactory/ad/ge;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ge;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ac:Lcom/tnkfactory/ad/ServiceCallback;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/NativeAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tnkfactory/ad/ge;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/NativeAdItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdItem;I)I
    .locals 0

    iput p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    return p1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdItem;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->h()V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tnkfactory/ad/NativeAdItem;->O:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    return p1
.end method

.method static synthetic b(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    return-void
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->b()V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/NativeAdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/NativeAdItem;->g(Landroid/content/Context;)V

    new-instance v0, Lcom/tnkfactory/ad/gj;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gj;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    new-instance v1, Lcom/tnkfactory/ad/gf;

    invoke-direct {v1, p0, v0}, Lcom/tnkfactory/ad/gf;-><init>(Lcom/tnkfactory/ad/NativeAdItem;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/gf;->start()V

    return-void
.end method

.method static synthetic d(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->g()V

    return-void
.end method

.method static synthetic e(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/hl;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    new-instance v0, Lcom/tnkfactory/ad/gg;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gg;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/gg;->start()V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/NativeAdListener;->onShow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->c()V

    return-void
.end method

.method static synthetic g(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ab:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/gi;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gi;-><init>(Lcom/tnkfactory/ad/NativeAdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->ad:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->aa:Lcom/tnkfactory/ad/gi;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    const-string v0, "icon_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    const-string v0, "fad_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->B:I

    :cond_0
    :goto_0
    const-string v0, "ntv_clck_dly"

    iget v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->N:I

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->N:I

    return-void

    :cond_1
    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iput v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->B:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iput v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->B:I

    goto :goto_0
.end method

.method public attachLayout(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/NativeAdItem;->attachLayout(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public attachLayout(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tnkfactory/ad/NativeAdItem;->O:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/NativeAdItem;

    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_2

    const-string v0, "tnkad"

    const-string v1, "attachLayout() already attached to the same view.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a()V

    :cond_3
    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->a()V

    sget-object v0, Lcom/tnkfactory/ad/NativeAdItem;->O:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    if-eqz p2, :cond_5

    :goto_1
    iput-object p2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tnkad"

    const-string v1, "attachLayout() isShown.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->f()V

    goto :goto_0

    :cond_5
    move-object p2, p1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->g()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public detachLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/NativeAdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppId()J
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->b:J

    goto :goto_0
.end method

.method public getAttachedLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->T:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->R:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLogicName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->J:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPointName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/NativeAdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRewardPoint()J
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/NativeAdItem;->getPointAmount()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRewardType()I
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/NativeAdItem;->getActionType()I

    move-result v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    if-eq v0, v4, :cond_1

    const-string v0, "NativeAdItem : ad not loaded."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Y:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string v0, "NativeAdItem : ad not attached."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->U:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->N:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->d()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/NativeAdListener;->onClick()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->j:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->e()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->i:Ljava/lang/String;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while moving on click url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public prepareAd()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "__tnk_cpc__"

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/NativeAdItem;->prepareAd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->J:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/NativeAdItem;->prepareAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareAd(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    if-eqz v0, :cond_1

    const-string v0, "NativeAdItem : Ad already requested."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tnkfactory/ad/ia;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NativeAdItem prepareAd() : interval check and canceled."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdListener;->onFailure(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->J:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tnkfactory/ad/NativeAdItem;->h()V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->X:Lcom/tnkfactory/ad/hl;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdItem;->V:Landroid/content/Context;

    iget v2, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    iget-object v3, p0, Lcom/tnkfactory/ad/NativeAdItem;->ac:Lcom/tnkfactory/ad/ServiceCallback;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/ServiceCallback;)V

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/tnkfactory/ad/NativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdItem;->W:Lcom/tnkfactory/ad/NativeAdListener;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ImageAdItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdItem;->S:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
