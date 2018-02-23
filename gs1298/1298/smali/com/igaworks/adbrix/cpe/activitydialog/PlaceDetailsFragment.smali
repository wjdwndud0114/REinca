.class public Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaceDetailsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "detailsFragment"

.field public static pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;


# instance fields
.field private campaignKey:I

.field private isFullScreen:Z

.field private mAdapter:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->slideNo:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->isFullScreen:Z

    return-void
.end method

.method public static newInstance(IIZ)Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;
    .locals 3
    .param p0, "campaignKey"    # I
    .param p1, "slideNo"    # I
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 38
    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    invoke-direct {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;-><init>()V

    .line 39
    .local v1, "pdf":Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "campaignKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "slideNo"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "isFullScreen"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public addUsingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sput-object p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    .line 54
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "campaignKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->campaignKey:I

    .line 55
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "slideNo"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->slideNo:I

    .line 56
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isFullScreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->isFullScreen:Z

    .line 60
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

    .line 61
    .local v1, "promotion":Lcom/igaworks/adbrix/model/Promotion;
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v3

    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->campaignKey:I

    if-ne v3, v4, :cond_0

    .line 62
    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->promotion:Lcom/igaworks/adbrix/model/Promotion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :cond_1
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 80
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v3, "rootParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    if-nez v4, :cond_1

    .line 85
    sget-object v4, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    .line 128
    :cond_0
    :goto_0
    return-object v2

    .line 89
    :cond_1
    new-instance v4, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->campaignKey:I

    iget-boolean v8, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->isFullScreen:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;IZ)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mAdapter:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;

    .line 91
    new-instance v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 92
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    const/16 v5, 0x2999

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 93
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mAdapter:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->promotion:Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_2

    .line 98
    new-instance v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    .line 99
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v1, v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .local v1, "mIndicatorParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v4, v5}, Lcom/igaworks/adbrix/cpe/common/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 101
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v10}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setSnap(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5, v10}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v0

    .line 103
    .local v0, "adImageSectionTitleMargin":I
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setPadding(IIII)V

    .line 104
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v4, v1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    new-instance v5, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment$1;

    invoke-direct {v5, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;)V

    invoke-interface {v4, v5}, Lcom/igaworks/adbrix/cpe/common/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mIndicator:Lcom/igaworks/adbrix/cpe/common/PageIndicator;

    check-cast v4, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    .end local v0    # "adImageSectionTitleMargin":I
    .end local v1    # "mIndicatorParam":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->slideNo:I

    if-le v4, v9, :cond_0

    .line 125
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->slideNo:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->isFullScreen:Z

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->usedBitmap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
