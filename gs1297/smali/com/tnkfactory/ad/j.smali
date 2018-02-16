.class public abstract Lcom/tnkfactory/ad/j;
.super Lcom/tnkfactory/ad/c;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected g:Lcom/tnkfactory/ad/ImageAdItem;

.field protected h:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iput-object v0, p0, Lcom/tnkfactory/ad/j;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/j;->h()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    new-instance v2, Lcom/tnkfactory/ad/l;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/l;-><init>(Lcom/tnkfactory/ad/j;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/tnkfactory/ad/ImageAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/j;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ImageAdItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    new-instance v2, Lcom/tnkfactory/ad/m;

    invoke-direct {v2, p0}, Lcom/tnkfactory/ad/m;-><init>(Lcom/tnkfactory/ad/j;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/tnkfactory/ad/ImageAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/j;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/tnkfactory/ad/o;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/o;-><init>(Lcom/tnkfactory/ad/j;)V

    new-instance v1, Lcom/tnkfactory/ad/n;

    invoke-direct {v1, p0, v0}, Lcom/tnkfactory/ad/n;-><init>(Lcom/tnkfactory/ad/j;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/n;->start()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/j;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/j;->h:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-wide v0, v0, Lcom/tnkfactory/ad/ImageAdItem;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tnkfactory/ad/k;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/k;-><init>(Lcom/tnkfactory/ad/j;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/k;->start()V

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget v0, v0, Lcom/tnkfactory/ad/ImageAdItem;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/j;->i()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/j;->g()V

    goto :goto_0
.end method

.method public getLogicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v0, v0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tnkfactory/ad/j;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget v2, v2, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/j;->e:I

    invoke-virtual {p0}, Lcom/tnkfactory/ad/j;->e()V

    goto :goto_0
.end method

.method public setAdImage(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object p1, p0, Lcom/tnkfactory/ad/j;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAdItem(Lcom/tnkfactory/ad/InterstitialAdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    return-void
.end method
