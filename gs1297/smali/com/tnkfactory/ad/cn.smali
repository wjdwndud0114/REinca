.class Lcom/tnkfactory/ad/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/cm;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdMediaActivity;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/cj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/cn;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tnkfactory/ad/VideoAdListener;->onClose(I)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->g(Lcom/tnkfactory/ad/AdMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->i(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->i(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-object v2, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v2}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v3}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/ir;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->b(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-object v2, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v2}, Lcom/tnkfactory/ad/AdMediaActivity;->j(Lcom/tnkfactory/ad/AdMediaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/tnkfactory/ad/co;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/co;-><init>(Lcom/tnkfactory/ad/cn;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/AdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    return-void
.end method

.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/VideoAdListener;->onClose(I)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->g(Lcom/tnkfactory/ad/AdMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->i(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->i(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-object v2, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v2}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v3}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/ir;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->finish()V

    return-void
.end method

.method public a(Lcom/tnkfactory/ad/ImageAdItem;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/tnkfactory/ad/VideoAdListener;->onShow()V

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-object v2, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v2}, Lcom/tnkfactory/ad/AdMediaActivity;->h(Lcom/tnkfactory/ad/AdMediaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/ia;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-wide v2, p1, Lcom/tnkfactory/ad/ImageAdItem;->b:J

    iget-object v1, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v1}, Lcom/tnkfactory/ad/ia;->o(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v1, Lcom/tnkfactory/ad/cp;

    invoke-direct {v1, p0, p1}, Lcom/tnkfactory/ad/cp;-><init>(Lcom/tnkfactory/ad/cn;Lcom/tnkfactory/ad/ImageAdItem;)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/cp;->start()V

    return v0
.end method

.method public b(Lcom/tnkfactory/ad/ImageAdItem;)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/VideoAdListener;->onVideoCompleted(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-wide v2, p1, Lcom/tnkfactory/ad/ImageAdItem;->b:J

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;J)V

    new-instance v0, Lcom/tnkfactory/ad/cq;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/cq;-><init>(Lcom/tnkfactory/ad/cn;Lcom/tnkfactory/ad/ImageAdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cq;->start()V

    return-void
.end method

.method public c(Lcom/tnkfactory/ad/ImageAdItem;)V
    .locals 0

    return-void
.end method
