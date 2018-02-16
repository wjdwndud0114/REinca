.class Lcom/moat/analytics/mobile/tjy/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/bo;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/tjy/bn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/bo;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/bo;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bo;->a:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/moat/analytics/mobile/tjy/bp;-><init>(Lcom/moat/analytics/mobile/tjy/bo;Lcom/moat/analytics/mobile/tjy/bn;)V

    return-object v0
.end method
