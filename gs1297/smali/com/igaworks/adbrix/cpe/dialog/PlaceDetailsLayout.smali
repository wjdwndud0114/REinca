.class public Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;
.super Landroid/widget/LinearLayout;
.source "PlaceDetailsLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "detailsFragment"

.field public static pdLayout:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;


# instance fields
.field private campaignKey:I

.field private isFullScreen:Z

.field private mAdapter:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

.field private mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

.field public mPager:Landroid/support/v4/view/ViewPager;

.field private promotion:Lcom/igaworks/adbrix/model/Promotion;

.field private slideNo:I

.field private usedBitmap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "campaignKey"    # I
    .param p3, "slideNo"    # I
    .param p4, "isFullScreen"    # Z

    .prologue
    const/4 v3, -0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput v3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->slideNo:I

    .line 31
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->isFullScreen:Z

    .line 37
    sput-object p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->pdLayout:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iput p2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->campaignKey:I

    .line 41
    iput p3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->slideNo:I

    .line 42
    iput-boolean p4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->isFullScreen:Z

    .line 46
    :try_start_0
    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Schedule;->getPromotions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    .line 47
    .local v1, "promotion":Lcom/igaworks/adbrix/model/Promotion;
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 48
    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->promotion:Lcom/igaworks/adbrix/model/Promotion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->init(Landroid/app/Activity;)V

    .line 61
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    sget-object v2, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;

    if-eqz v2, :cond_1

    .line 56
    sget-object v2, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;->finishDialog()V

    goto :goto_0
.end method


# virtual methods
.method public addUsingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 65
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v3, "rootParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    if-nez v4, :cond_0

    .line 70
    sget-object v4, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;->finishDialog()V

    .line 114
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v4, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->campaignKey:I

    iget-boolean v7, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->isFullScreen:Z

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;IZ)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mAdapter:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .line 76
    new-instance v4, Landroid/support/v4/view/ViewPager;

    invoke-direct {v4, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    const/16 v5, 0x2999

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 78
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mAdapter:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_1

    .line 83
    new-instance v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-direct {v4, p1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    .line 84
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v1, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 85
    .local v1, "mIndicatorParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v4, v5}, Lcom/igaworks/adbrix/cpe/common/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 86
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v9}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setSnap(Z)V

    .line 87
    const/4 v4, 0x4

    invoke-static {p1, v4, v9}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v0

    .line 88
    .local v0, "adImageSectionTitleMargin":I
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setPadding(IIII)V

    .line 89
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    new-instance v5, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout$1;

    invoke-direct {v5, p0}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout$1;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;)V

    invoke-interface {v4, v5}, Lcom/igaworks/adbrix/cpe/common/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    .end local v0    # "adImageSectionTitleMargin":I
    .end local v1    # "mIndicatorParam":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->slideNo:I

    if-le v4, v8, :cond_2

    .line 110
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->mPager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->slideNo:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 113
    :cond_2
    invoke-virtual {p0, v2}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->isFullScreen:Z

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->usedBitmap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
