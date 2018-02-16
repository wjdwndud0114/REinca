.class public Lcom/tnkfactory/ad/NativeAdManager;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/tnkfactory/ad/NativeAdManagerListener;

.field private d:Lcom/tnkfactory/ad/NativeAdListener;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Lcom/tnkfactory/framework/vo/ValueObject;

.field private i:Ljava/util/Map;

.field private j:I

.field private k:J

.field private l:Lcom/tnkfactory/ad/hl;

.field private final m:Lcom/tnkfactory/ad/ServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdManager;->a:I

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->c:Lcom/tnkfactory/ad/NativeAdManagerListener;

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->d:Lcom/tnkfactory/ad/NativeAdListener;

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->g:I

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdManager;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->k:J

    iput-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->l:Lcom/tnkfactory/ad/hl;

    new-instance v0, Lcom/tnkfactory/ad/gk;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/gk;-><init>(Lcom/tnkfactory/ad/NativeAdManager;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->m:Lcom/tnkfactory/ad/ServiceCallback;

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->b:Landroid/content/Context;

    iput v3, p0, Lcom/tnkfactory/ad/NativeAdManager;->a:I

    iput p3, p0, Lcom/tnkfactory/ad/NativeAdManager;->f:I

    iput-object p2, p0, Lcom/tnkfactory/ad/NativeAdManager;->e:Ljava/lang/String;

    iput p4, p0, Lcom/tnkfactory/ad/NativeAdManager;->g:I

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->l:Lcom/tnkfactory/ad/hl;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdManager;I)I
    .locals 0

    iput p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->c:Lcom/tnkfactory/ad/NativeAdManagerListener;

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/NativeAdManager;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    return-object p1
.end method


# virtual methods
.method public detachAll()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/NativeAdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/NativeAdItem;->detachLayout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAdItemAt(I)Lcom/tnkfactory/ad/NativeAdItem;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/NativeAdItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v3

    new-instance v0, Lcom/tnkfactory/ad/NativeAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->b:Landroid/content/Context;

    iget v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->f:I

    iget-object v4, p0, Lcom/tnkfactory/ad/NativeAdManager;->d:Lcom/tnkfactory/ad/NativeAdListener;

    iget-object v5, p0, Lcom/tnkfactory/ad/NativeAdManager;->l:Lcom/tnkfactory/ad/hl;

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/NativeAdItem;-><init>(Landroid/content/Context;ILcom/tnkfactory/framework/vo/ValueObject;Lcom/tnkfactory/ad/NativeAdListener;Lcom/tnkfactory/ad/hl;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getUniqueAdCount()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    goto :goto_0
.end method

.method public nextAdItem()Lcom/tnkfactory/ad/NativeAdItem;
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->j:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/NativeAdManager;->getAdItemAt(I)Lcom/tnkfactory/ad/NativeAdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->j:I

    :cond_0
    return-object v0
.end method

.method public prepareAds()V
    .locals 6

    const/4 v2, 0x1

    iget v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->a:I

    if-ne v0, v2, :cond_1

    const-string v0, "NativeAdManager : Ad already requested."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ia;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NativeAdManager prepareAds() : interval check and canceled."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->c:Lcom/tnkfactory/ad/NativeAdManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->c:Lcom/tnkfactory/ad/NativeAdManagerListener;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdManagerListener;->onFailure(I)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->h:Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->j:I

    iget-object v0, p0, Lcom/tnkfactory/ad/NativeAdManager;->l:Lcom/tnkfactory/ad/hl;

    iget-object v1, p0, Lcom/tnkfactory/ad/NativeAdManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/NativeAdManager;->e:Ljava/lang/String;

    iget v3, p0, Lcom/tnkfactory/ad/NativeAdManager;->f:I

    iget v4, p0, Lcom/tnkfactory/ad/NativeAdManager;->g:I

    iget-object v5, p0, Lcom/tnkfactory/ad/NativeAdManager;->m:Lcom/tnkfactory/ad/ServiceCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Ljava/lang/String;IILcom/tnkfactory/ad/ServiceCallback;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/tnkfactory/ad/NativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->d:Lcom/tnkfactory/ad/NativeAdListener;

    return-void
.end method

.method public setManagerListener(Lcom/tnkfactory/ad/NativeAdManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/NativeAdManager;->c:Lcom/tnkfactory/ad/NativeAdManagerListener;

    return-void
.end method
