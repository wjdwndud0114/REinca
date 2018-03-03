.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setProgressModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1900
    :try_start_0
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 1901
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1902
    .local v2, "cParent":Landroid/view/ViewParent;
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1903
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    .line 1904
    check-cast v2, Landroid/view/View;

    .end local v2    # "cParent":Landroid/view/ViewParent;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1907
    :cond_0
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    invoke-virtual {v9}, Lcom/igaworks/model/ParticipationProgressResponseModel;->isResult()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1909
    :cond_1
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1910
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1912
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    if-eqz v9, :cond_4

    .line 1914
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Language;->getUnknownError()Ljava/lang/String;

    move-result-object v5

    .line 1916
    .local v5, "errorMsg":Ljava/lang/String;
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    invoke-virtual {v9}, Lcom/igaworks/model/ParticipationProgressResponseModel;->getResultCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1929
    :goto_0
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 1930
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    :cond_2
    invoke-static {}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->getInstance()Lcom/igaworks/dao/NotAvailableCampaignDAO;

    move-result-object v6

    .line 1933
    .local v6, "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v6, v9, v10}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->saveNotAvailableCampaign(Landroid/content/Context;I)V

    .line 1995
    .end local v5    # "errorMsg":Ljava/lang/String;
    .end local v6    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    :cond_3
    :goto_1
    return-void

    .line 1918
    .restart local v5    # "errorMsg":Ljava/lang/String;
    :pswitch_0
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Language;->getCanNotParticipate()Ljava/lang/String;

    move-result-object v5

    .line 1919
    goto :goto_0

    .line 1922
    :pswitch_1
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Language;->getAnotherAppParticipate()Ljava/lang/String;

    move-result-object v5

    .line 1923
    goto :goto_0

    .line 1936
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 1937
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Language;->getUnknownError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1991
    :catch_0
    move-exception v4

    .line 1992
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1993
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->finishDialog()V

    goto :goto_1

    .line 1943
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1944
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    if-eqz v9, :cond_a

    .line 1949
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    invoke-virtual {v9}, Lcom/igaworks/model/ParticipationProgressResponseModel;->getData()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1951
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v9

    invoke-virtual {v9}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v8

    .line 1952
    .local v8, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    const/4 v3, 0x0

    .line 1954
    .local v3, "completeSteps":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igaworks/adbrix/model/StepRewardModel;

    .line 1956
    .local v7, "step":Lcom/igaworks/adbrix/model/StepRewardModel;
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    invoke-virtual {v10}, Lcom/igaworks/model/ParticipationProgressResponseModel;->getData()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/model/ParticipationProgressModel;

    .line 1958
    .local v1, "aModel":Lcom/igaworks/model/ParticipationProgressModel;
    invoke-virtual {v1}, Lcom/igaworks/model/ParticipationProgressModel;->getConversionKey()I

    move-result v11

    invoke-virtual {v7}, Lcom/igaworks/adbrix/model/StepRewardModel;->getConversionKey()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 1959
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/igaworks/adbrix/model/StepRewardModel;->setComplete(Z)V

    .line 1960
    add-int/lit8 v3, v3, 0x1

    .line 1961
    goto :goto_2

    .line 1964
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/igaworks/adbrix/model/StepRewardModel;->setComplete(Z)V

    goto :goto_3

    .line 1971
    .end local v1    # "aModel":Lcom/igaworks/model/ParticipationProgressModel;
    .end local v7    # "step":Lcom/igaworks/adbrix/model/StepRewardModel;
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v3, v9, :cond_a

    .line 1973
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1974
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1976
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 1977
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Language;->getAlreadyParticipated()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1980
    :cond_9
    invoke-static {}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->getInstance()Lcom/igaworks/dao/NotAvailableCampaignDAO;

    move-result-object v6

    .line 1981
    .restart local v6    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v9, v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v6, v9, v10}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->saveNotAvailableCampaign(Landroid/content/Context;I)V

    .line 1989
    .end local v3    # "completeSteps":I
    .end local v6    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    .end local v8    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    :cond_a
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setRewardView()Landroid/view/View;

    .line 1990
    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-virtual {v9}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setPlayBtnClickListener()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1916
    nop

    :pswitch_data_0
    .packed-switch 0x14b6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
