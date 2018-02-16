.class public Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;
.super Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
.source "FragmentActivityDialogContentsCreator.java"


# static fields
.field private static singleton:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "media"    # Lcom/igaworks/adbrix/model/Media;
    .param p6, "isPortrait"    # Z
    .param p7, "currentCampaignKey"    # I
    .param p8, "primaryCampaignKey"    # I
    .param p9, "spaceKey"    # Ljava/lang/String;
    .param p10, "actionListener"    # Lcom/igaworks/adbrix/cpe/common/DialogActionListener;
    .param p11, "handler"    # Landroid/os/Handler;
    .param p12, "showIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/igaworks/adbrix/model/Media;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;ZII",
            "Ljava/lang/String;",
            "Lcom/igaworks/adbrix/cpe/common/DialogActionListener;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "campaignKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "promotions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/igaworks/adbrix/model/Promotion;>;"
    invoke-direct/range {p0 .. p12}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;Z)V

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;ZZ)Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "media"    # Lcom/igaworks/adbrix/model/Media;
    .param p5, "isPortrait"    # Z
    .param p6, "currentCampaignKey"    # I
    .param p7, "primaryCampaignKey"    # I
    .param p8, "spaceKey"    # Ljava/lang/String;
    .param p9, "actionListener"    # Lcom/igaworks/adbrix/cpe/common/DialogActionListener;
    .param p10, "handler"    # Landroid/os/Handler;
    .param p11, "newInstance"    # Z
    .param p12, "showIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/igaworks/adbrix/model/Media;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;ZII",
            "Ljava/lang/String;",
            "Lcom/igaworks/adbrix/cpe/common/DialogActionListener;",
            "Landroid/os/Handler;",
            "ZZ)",
            "Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "campaignKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "promotions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/igaworks/adbrix/model/Promotion;>;"
    if-nez p11, :cond_0

    sget-object v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->singleton:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    if-nez v1, :cond_1

    .line 30
    :cond_0
    new-instance v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;Z)V

    sput-object v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->singleton:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    .line 35
    :goto_0
    sget-object v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->singleton:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    return-object v1

    .line 32
    :cond_1
    sget-object v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->singleton:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    move/from16 v0, p5

    iput-boolean v0, v1, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->isPortrait:Z

    goto :goto_0
.end method


# virtual methods
.method public changePromotionContents()V
    .locals 4

    .prologue
    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v1

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentSlideNo:I

    invoke-interface {v2, v1, v3}, Lcom/igaworks/adbrix/cpe/common/DialogActionListener;->setSlideArea(II)V

    .line 99
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->setRewardView()Landroid/view/View;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    .line 102
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->setPlayBtnClickListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public finishDialog()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    invoke-interface {v1}, Lcom/igaworks/adbrix/cpe/common/DialogActionListener;->finishDialog()V

    .line 52
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSlideImageSection()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 59
    :try_start_0
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->slideArea:Landroid/widget/FrameLayout;

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->isPortrait:Z

    if-eqz v2, :cond_1

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x18b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0xf6

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .restart local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->slideArea:Landroid/widget/FrameLayout;

    const/16 v3, 0x1999

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 70
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->slideArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->slideArea:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 72
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->slideArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v2

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentSlideNo:I

    invoke-interface {v3, v2, v4}, Lcom/igaworks/adbrix/cpe/common/DialogActionListener;->setSlideArea(II)V

    .line 78
    iget v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentSlideNo:I

    if-le v2, v6, :cond_0

    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, -0x1

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->currentSlideNo:I

    .line 89
    .end local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 66
    .restart local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x1ba

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0x113

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 84
    .end local v1    # "slideAreaParam":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    invoke-interface {v2}, Lcom/igaworks/adbrix/cpe/common/DialogActionListener;->finishDialog()V

    goto :goto_1
.end method
