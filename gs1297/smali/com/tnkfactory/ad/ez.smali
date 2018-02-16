.class Lcom/tnkfactory/ad/ez;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/tnkfactory/ad/BannerAdItem;

.field private b:Lcom/tnkfactory/ad/BannerAdListener;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdItem;Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    iput-object v0, p0, Lcom/tnkfactory/ad/ez;->b:Lcom/tnkfactory/ad/BannerAdListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ez;->c:J

    iput-object p2, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    iput-object p3, p0, Lcom/tnkfactory/ad/ez;->b:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ez;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->clearAnimation()V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, -0x1

    const v0, 0x6585ddf3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ez;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ez;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p0}, Lcom/tnkfactory/ad/ez;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tnkfactory/ad/BannerAdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ez;->c:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tnkfactory/ad/ez;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->f()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/ad/BannerAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ez;->b:Lcom/tnkfactory/ad/BannerAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ez;->b:Lcom/tnkfactory/ad/BannerAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/BannerAdListener;->onClick()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tnkfactory/ad/ez;->a:Lcom/tnkfactory/ad/BannerAdItem;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/BannerAdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/tnkfactory/ad/ez;->b()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
