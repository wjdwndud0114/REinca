.class public Lcom/igaworks/adbrix/model/ViralCPIModel;
.super Ljava/lang/Object;
.source "ViralCPIModel.java"


# instance fields
.field private CampaignKey:I

.field private CheckRewardText:Ljava/lang/String;

.field private CloseBtnColorCode:Ljava/lang/String;

.field private CloseBtnTextColorCode:Ljava/lang/String;

.field private CompleteCopyText:Ljava/lang/String;

.field private ConversionKey:I

.field private IsTrackingURLSetting:Z

.field private ItemName:Ljava/lang/String;

.field private ItemQuantity:Ljava/lang/String;

.field private ItemURL:Ljava/lang/String;

.field private NoMoreShowColorCode:Ljava/lang/String;

.field private NoMoreShowText:Ljava/lang/String;

.field private ParentConversionKey:J

.field private RewardDetailText:Ljava/lang/String;

.field private RewardText:Ljava/lang/String;

.field private SharingMessage:Ljava/lang/String;

.field private SharingTitle:Ljava/lang/String;

.field private ShowOnlyOnce:Z

.field private TopbarColorCode:Ljava/lang/String;

.field private TopbarTitleTextColorCode:Ljava/lang/String;

.field private ViralConfirmBtnColorCode:Ljava/lang/String;

.field private ViralConfirmBtnText:Ljava/lang/String;

.field private ViralConfirmBtnTextColorCode:Ljava/lang/String;

.field private ViralInfoDialogBGColorCode:Ljava/lang/String;

.field private ViralInfoTitle:Ljava/lang/String;

.field private ViralMessage:Ljava/lang/String;

.field private referralKey:Ljava/lang/String;

.field private subconversionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->IsTrackingURLSetting:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "referralKey"    # Ljava/lang/String;
    .param p2, "subconversionKey"    # Ljava/lang/String;
    .param p3, "conversionKey"    # I
    .param p4, "parentConversionKey"    # J
    .param p6, "campaignKey"    # I
    .param p7, "viralMessage"    # Ljava/lang/String;
    .param p8, "viralInfoTitle"    # Ljava/lang/String;
    .param p9, "rewardText"    # Ljava/lang/String;
    .param p10, "rewardDetailText"    # Ljava/lang/String;
    .param p11, "checkRewardText"    # Ljava/lang/String;
    .param p12, "viralConfirmBtnText"    # Ljava/lang/String;
    .param p13, "sharingTitle"    # Ljava/lang/String;
    .param p14, "sharingMessage"    # Ljava/lang/String;
    .param p15, "noMoreShowText"    # Ljava/lang/String;
    .param p16, "completeCopyText"    # Ljava/lang/String;
    .param p17, "topbarColorCode"    # Ljava/lang/String;
    .param p18, "topbarTitleTextColorCode"    # Ljava/lang/String;
    .param p19, "viralInfoDialogBGColorCode"    # Ljava/lang/String;
    .param p20, "viralConfirmBtnColorCode"    # Ljava/lang/String;
    .param p21, "viralConfirmBtnTextColorCode"    # Ljava/lang/String;
    .param p22, "closeBtnColorCode"    # Ljava/lang/String;
    .param p23, "closeBtnTextColorCode"    # Ljava/lang/String;
    .param p24, "noMoreShowColorCode"    # Ljava/lang/String;
    .param p25, "showOnlyOnce"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->IsTrackingURLSetting:Z

    .line 54
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->referralKey:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->subconversionKey:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ConversionKey:I

    .line 57
    iput-wide p4, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ParentConversionKey:J

    .line 58
    iput p6, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CampaignKey:I

    .line 59
    iput-object p7, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralMessage:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoTitle:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardText:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardDetailText:Ljava/lang/String;

    .line 63
    iput-object p11, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CheckRewardText:Ljava/lang/String;

    .line 64
    iput-object p12, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnText:Ljava/lang/String;

    .line 65
    iput-object p13, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingTitle:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingMessage:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowText:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CompleteCopyText:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarColorCode:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarTitleTextColorCode:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoDialogBGColorCode:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnColorCode:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnTextColorCode:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnColorCode:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnTextColorCode:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowColorCode:Ljava/lang/String;

    .line 77
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ShowOnlyOnce:Z

    .line 78
    return-void
.end method


# virtual methods
.method public getCampaignKey()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CampaignKey:I

    return v0
.end method

.method public getCheckRewardText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CheckRewardText:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseBtnColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseBtnTextColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnTextColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteCopyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CompleteCopyText:Ljava/lang/String;

    return-object v0
.end method

.method public getConversionKey()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ConversionKey:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getItemURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemURL:Ljava/lang/String;

    return-object v0
.end method

.method public getNoMoreShowColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNoMoreShowText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowText:Ljava/lang/String;

    return-object v0
.end method

.method public getParentConversionKey()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ParentConversionKey:J

    return-wide v0
.end method

.method public getReferralKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->referralKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardDetailText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardText:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubconversionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->subconversionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTopbarColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTopbarTitleTextColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarTitleTextColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getViralConfirmBtnColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getViralConfirmBtnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getViralConfirmBtnTextColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnTextColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getViralInfoDialogBGColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoDialogBGColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getViralInfoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getViralMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isIsTrackingURLSetting()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->IsTrackingURLSetting:Z

    return v0
.end method

.method public isShowOnlyOnce()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ShowOnlyOnce:Z

    return v0
.end method

.method public setCampaignKey(I)V
    .locals 0
    .param p1, "campaignKey"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CampaignKey:I

    .line 150
    return-void
.end method

.method public setCheckRewardText(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkRewardText"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CheckRewardText:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCloseBtnColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeBtnColorCode"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnColorCode:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCloseBtnTextColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeBtnTextColorCode"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CloseBtnTextColorCode:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setCompleteCopyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "completeCopyText"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->CompleteCopyText:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ConversionKey:I

    .line 134
    return-void
.end method

.method public setIsTrackingURLSetting(Z)V
    .locals 0
    .param p1, "isTrackingURLSetting"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->IsTrackingURLSetting:Z

    .line 86
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setItemQuantity(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemQuantity"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemQuantity:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setItemURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemURL"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ItemURL:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setNoMoreShowColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "noMoreShowColorCode"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowColorCode:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setNoMoreShowText(Ljava/lang/String;)V
    .locals 0
    .param p1, "noMoreShowText"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->NoMoreShowText:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setParentConversionKey(J)V
    .locals 1
    .param p1, "parentConversionKey"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ParentConversionKey:J

    .line 142
    return-void
.end method

.method public setReferralKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "referralKey"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->referralKey:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setRewardDetailText(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardDetailText"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardDetailText:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setRewardText(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardText"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->RewardText:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setSharingMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "sharingMessage"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingMessage:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setSharingTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sharingTitle"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->SharingTitle:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setShowOnlyOnce(Z)V
    .locals 0
    .param p1, "showOnlyOnce"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ShowOnlyOnce:Z

    .line 302
    return-void
.end method

.method public setSubconversionKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "subconversionKey"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->subconversionKey:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTopbarColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "topbarColorCode"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarColorCode:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setTopbarTitleTextColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "topbarTitleTextColorCode"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->TopbarTitleTextColorCode:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setViralConfirmBtnColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralConfirmBtnColorCode"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnColorCode:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setViralConfirmBtnText(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralConfirmBtnText"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnText:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setViralConfirmBtnTextColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralConfirmBtnTextColorCode"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralConfirmBtnTextColorCode:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setViralInfoDialogBGColorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralInfoDialogBGColorCode"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoDialogBGColorCode:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setViralInfoTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralInfoTitle"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralInfoTitle:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setViralMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "viralMessage"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralCPIModel;->ViralMessage:Ljava/lang/String;

    .line 158
    return-void
.end method
