.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommonDialogContentsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StepRewardListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/igaworks/adbrix/model/StepRewardModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVEN_BG_COLOR:Ljava/lang/String; = "#242d3e"

.field public static final MISSION_TV_ID:I = 0x3999

.field public static final ODD_BG_COLOR:Ljava/lang/String; = "#20293b"


# instance fields
.field public checkIvSize:I

.field private context:Landroid/content/Context;

.field public rowHeight:I

.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;


# direct methods
.method public constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1391
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .line 1392
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1393
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    .line 1394
    const/16 v0, 0x27

    invoke-static {p2, v0, v1}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->rowHeight:I

    .line 1395
    const/16 v0, 0x1e

    invoke-static {p2, v0, v1}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->checkIvSize:I

    .line 1396
    return-void
.end method

.method static synthetic access$100(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1406
    new-instance p2, Landroid/widget/LinearLayout;

    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1409
    .restart local p2    # "convertView":Landroid/view/View;
    :try_start_0
    new-instance v13, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v13, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1410
    .local v13, "convertViewParam":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1412
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    const-string v2, "#242d3e"

    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1414
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1415
    .local v11, "contentsLl":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->rowHeight:I

    invoke-direct {v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1416
    .local v12, "contentsLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v17

    .line 1418
    .local v17, "padding":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v11, v2, v0, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1419
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1422
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1423
    .local v15, "missionTv":Landroid/widget/TextView;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1424
    .local v16, "missionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x3999

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1425
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    const/16 v2, 0x11

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v3, v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/StepRewardModel;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/StepRewardModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    const-string v2, "#657084"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1429
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    const/16 v3, 0xf

    invoke-static {v2, v15, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1432
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1433
    .local v18, "rewardTv":Landroid/widget/TextView;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rewardIv:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1434
    .local v19, "rewardTvParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v6, v6, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/StepRewardModel;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/StepRewardModel;->getReward()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    const-string v2, "#657084"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1438
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    const/16 v3, 0xf

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1441
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1442
    .local v5, "checkIv":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1443
    .local v10, "checkIvParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getMissionCheckOff()Ljava/lang/String;

    move-result-object v4

    .line 1448
    .local v4, "checkUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v3, v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/StepRewardModel;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getMissionCheckOn()Ljava/lang/String;

    move-result-object v4

    .line 1450
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1451
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1453
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$1;

    .line 1455
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v5

    invoke-direct/range {v2 .. v8}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$1;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object v8, v2

    .line 1454
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1489
    :goto_1
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1490
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1491
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1493
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1494
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    const/4 v6, 0x1

    # invokes: Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;
    invoke-static {v3, v6}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->access$200(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1500
    .end local v4    # "checkUrl":Ljava/lang/String;
    .end local v5    # "checkIv":Landroid/widget/ImageView;
    .end local v10    # "checkIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "contentsLl":Landroid/widget/LinearLayout;
    .end local v12    # "contentsLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "convertViewParam":Landroid/widget/AbsListView$LayoutParams;
    .end local v15    # "missionTv":Landroid/widget/TextView;
    .end local v16    # "missionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "padding":I
    .end local v18    # "rewardTv":Landroid/widget/TextView;
    .end local v19    # "rewardTvParam":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    return-object p2

    .line 1412
    .restart local v13    # "convertViewParam":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const-string v2, "#20293b"

    goto/16 :goto_0

    .line 1464
    .restart local v4    # "checkUrl":Ljava/lang/String;
    .restart local v5    # "checkIv":Landroid/widget/ImageView;
    .restart local v10    # "checkIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "contentsLl":Landroid/widget/LinearLayout;
    .restart local v12    # "contentsLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15    # "missionTv":Landroid/widget/TextView;
    .restart local v16    # "missionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "padding":I
    .restart local v18    # "rewardTv":Landroid/widget/TextView;
    .restart local v19    # "rewardTvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move-object v9, v4

    .line 1465
    .local v9, "_checkUrl":Ljava/lang/String;
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v5}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter$2;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1496
    .end local v4    # "checkUrl":Ljava/lang/String;
    .end local v5    # "checkIv":Landroid/widget/ImageView;
    .end local v9    # "_checkUrl":Ljava/lang/String;
    .end local v10    # "checkIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "contentsLl":Landroid/widget/LinearLayout;
    .end local v12    # "contentsLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "convertViewParam":Landroid/widget/AbsListView$LayoutParams;
    .end local v15    # "missionTv":Landroid/widget/TextView;
    .end local v16    # "missionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "padding":I
    .end local v18    # "rewardTv":Landroid/widget/TextView;
    .end local v19    # "rewardTvParam":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v14

    .line 1497
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
