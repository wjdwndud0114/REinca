.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidGiveRewardItemResult(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "completedRewardKey"    # Ljava/lang/String;

    .prologue
    .line 526
    sget-boolean v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->isLogging:Z

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "IGAW_QA_3RD"

    const-string v2, "didGiveRewardItemResult && isUnityPlatform : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSuccess="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    const-string v2, "&completedRewardKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "IgaworksUnityPluginAOS"

    const-string v2, "OnDidGiveRewardItemRequestResultForUnity"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public onGetRewardInfo(ZLjava/lang/String;[Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;)V
    .locals 8
    .param p1, "isSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "rewardItems"    # [Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;

    .prologue
    .line 537
    if-eqz p1, :cond_3

    .line 539
    array-length v3, p3

    if-nez v3, :cond_1

    .line 540
    const-string v3, "IGAW_QA_3RD"

    const-string v4, "There is no Reward Info for user."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const-string v3, "IGAW_QA_3RD"

    const-string v4, "Detected Igaworks Reward Info."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x1

    .line 544
    .local v0, "index":I
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, p3, v3

    .line 548
    .local v2, "rewardItem":Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "campaignkey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;->getCampaignKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    const-string v6, "&campaignname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;->getCampaignTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    const-string v6, "&quantity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;->getRewardQuantity()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    const-string v6, "&cv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;->getCV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 552
    const-string v6, "&rewardkey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;->getRTID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 553
    const-string v6, "&index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 554
    const-string v6, "&length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "rewardInfo":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 557
    sget-boolean v5, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->isLogging:Z

    if-eqz v5, :cond_2

    .line 558
    const-string v5, "IGAW_QA_3RD"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rewardItem info : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_2
    const-string v5, "IgaworksUnityPluginAOS"

    const-string v6, "OnGetRewardInfoForUnity"

    invoke-static {v5, v6, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 564
    .end local v0    # "index":I
    .end local v1    # "rewardInfo":Ljava/lang/String;
    .end local v2    # "rewardItem":Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;
    :cond_3
    const-string v3, "IGAW_QA_3RD"

    const-string v4, "Fail to get the Igaworks Reward Info."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
