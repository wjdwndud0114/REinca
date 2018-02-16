.class public Lcom/igaworks/adbrix/model/RealReward;
.super Ljava/lang/Object;
.source "RealReward.java"


# instance fields
.field private ConversionKey:I

.field private IsDailyEvent:Z

.field private IsTest:Z

.field private MissionText:Ljava/lang/String;

.field private NoCondition:Z

.field private ProgressValidTime:J

.field private RealRewardImageUrl:Ljava/lang/String;

.field private RealRewardKey:I

.field private RealRewardName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZIZZ)V
    .locals 1
    .param p1, "realRewardName"    # Ljava/lang/String;
    .param p2, "realRewardImageUrl"    # Ljava/lang/String;
    .param p3, "missionText"    # Ljava/lang/String;
    .param p4, "realRewardKey"    # I
    .param p5, "progressValidTime"    # J
    .param p7, "isTest"    # Z
    .param p8, "conversionKey"    # I
    .param p9, "isDailyEvent"    # Z
    .param p10, "noCondition"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardImageUrl:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/igaworks/adbrix/model/RealReward;->MissionText:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardKey:I

    .line 28
    iput-wide p5, p0, Lcom/igaworks/adbrix/model/RealReward;->ProgressValidTime:J

    .line 29
    iput-boolean p7, p0, Lcom/igaworks/adbrix/model/RealReward;->IsTest:Z

    .line 30
    iput p8, p0, Lcom/igaworks/adbrix/model/RealReward;->ConversionKey:I

    .line 31
    iput-boolean p9, p0, Lcom/igaworks/adbrix/model/RealReward;->IsDailyEvent:Z

    .line 32
    iput-boolean p10, p0, Lcom/igaworks/adbrix/model/RealReward;->NoCondition:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getConversionKey()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/igaworks/adbrix/model/RealReward;->ConversionKey:I

    return v0
.end method

.method public getMissionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealReward;->MissionText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressValidTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/igaworks/adbrix/model/RealReward;->ProgressValidTime:J

    return-wide v0
.end method

.method public getRealRewardImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRealRewardKey()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardKey:I

    return v0
.end method

.method public getRealRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public isIsDailyEvent()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/RealReward;->IsDailyEvent:Z

    return v0
.end method

.method public isIsTest()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/RealReward;->IsTest:Z

    return v0
.end method

.method public isNoCondition()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/RealReward;->NoCondition:Z

    return v0
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/igaworks/adbrix/model/RealReward;->ConversionKey:I

    .line 65
    return-void
.end method

.method public setIsDailyEvent(Z)V
    .locals 0
    .param p1, "isDailyEvent"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/RealReward;->IsDailyEvent:Z

    .line 41
    return-void
.end method

.method public setIsTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/RealReward;->IsTest:Z

    .line 57
    return-void
.end method

.method public setMissionText(Ljava/lang/String;)V
    .locals 0
    .param p1, "missionText"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealReward;->MissionText:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNoCondition(Z)V
    .locals 0
    .param p1, "noCondition"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/RealReward;->NoCondition:Z

    .line 49
    return-void
.end method

.method public setProgressValidTime(J)V
    .locals 1
    .param p1, "progressValidTime"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/igaworks/adbrix/model/RealReward;->ProgressValidTime:J

    .line 105
    return-void
.end method

.method public setRealRewardImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "realRewardImageUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardImageUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRealRewardKey(I)V
    .locals 0
    .param p1, "realRewardKey"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardKey:I

    .line 97
    return-void
.end method

.method public setRealRewardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "realRewardName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealReward;->RealRewardName:Ljava/lang/String;

    .line 73
    return-void
.end method
