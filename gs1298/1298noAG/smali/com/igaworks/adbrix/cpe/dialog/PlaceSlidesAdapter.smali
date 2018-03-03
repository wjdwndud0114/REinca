.class public Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PlaceSlidesAdapter.java"

# interfaces
.implements Lcom/igaworks/adbrix/cpe/common/IconPagerAdapter;


# instance fields
.field private activity:Landroid/app/Activity;

.field private campaignKey:I

.field private imageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFullscreen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;IZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "campaignKey"    # I
    .param p4, "isFullscreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "imageUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    .line 37
    iput-boolean p4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->isFullscreen:Z

    .line 38
    iput p3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->campaignKey:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .prologue
    .line 27
    iget v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->campaignKey:I

    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "arg2":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 15
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 47
    new-instance v7, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v7, "view":Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v14

    .line 50
    .local v14, "borderWidth":I
    invoke-virtual {v7, v14, v14, v14, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51
    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 52
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v1, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;

    .line 54
    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v2

    const-string v5, "imagecache"

    invoke-virtual {v2, v5}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object v13, v1

    .line 53
    invoke-virtual/range {v8 .. v13}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 95
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 97
    iget-boolean v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->isFullscreen:Z

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    new-instance v1, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$3;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$3;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_1
    return-object v7

    .line 68
    .restart local p1    # "collection":Landroid/view/View;
    :cond_0
    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;

    move/from16 v0, p2

    invoke-direct {v2, p0, v0, v7}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;ILandroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 112
    .end local p1    # "collection":Landroid/view/View;
    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v1, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p2, Landroid/view/View;

    .end local p2    # "arg1":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method
