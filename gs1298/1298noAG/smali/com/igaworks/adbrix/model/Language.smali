.class public Lcom/igaworks/adbrix/model/Language;
.super Ljava/lang/Object;
.source "Language.java"


# instance fields
.field private AlreadyParticipated:Ljava/lang/String;

.field private AnotherAppParticipate:Ljava/lang/String;

.field private CanNotParticipate:Ljava/lang/String;

.field private FirstUnitForOneStep:Ljava/lang/String;

.field private IsComplete:Ljava/lang/String;

.field private Mission:Ljava/lang/String;

.field private RewardUnitForOneStep:Ljava/lang/String;

.field private UnknownError:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "canNotParticipate"    # Ljava/lang/String;
    .param p2, "anotherAppParticipate"    # Ljava/lang/String;
    .param p3, "unknownError"    # Ljava/lang/String;
    .param p4, "alreadyParticipated"    # Ljava/lang/String;
    .param p5, "firstUnitForOneStep"    # Ljava/lang/String;
    .param p6, "rewardUnitForOneStep"    # Ljava/lang/String;
    .param p7, "mission"    # Ljava/lang/String;
    .param p8, "isComplete"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->CanNotParticipate:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Language;->AnotherAppParticipate:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Language;->UnknownError:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Language;->AlreadyParticipated:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/igaworks/adbrix/model/Language;->FirstUnitForOneStep:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/igaworks/adbrix/model/Language;->RewardUnitForOneStep:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/igaworks/adbrix/model/Language;->Mission:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/igaworks/adbrix/model/Language;->IsComplete:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlreadyParticipated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AlreadyParticipated:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "\ucc38\uc5ec \uc644\ub8cc\ud55c \uad11\uace0\uc785\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AlreadyParticipated:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AlreadyParticipated:Ljava/lang/String;

    return-object v0
.end method

.method public getAnotherAppParticipate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AnotherAppParticipate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "\ub2e4\ub978 \uc571\uc5d0\uc11c \ucc38\uc5ec \uc911\uc778 \uad11\uace0\uc785\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AnotherAppParticipate:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->AnotherAppParticipate:Ljava/lang/String;

    return-object v0
.end method

.method public getCanNotParticipate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->CanNotParticipate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "\ucc38\uc5ec\ud560 \uc218 \uc5c6\ub294 \uad11\uace0\uc785\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->CanNotParticipate:Ljava/lang/String;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->CanNotParticipate:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstUnitForOneStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->FirstUnitForOneStep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "\uc124\uce58"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->FirstUnitForOneStep:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->FirstUnitForOneStep:Ljava/lang/String;

    return-object v0
.end method

.method public getIsComplete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->IsComplete:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "\ud68d\ub4dd"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->IsComplete:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->IsComplete:Ljava/lang/String;

    return-object v0
.end method

.method public getMission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->Mission:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "MISSION!"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->Mission:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->Mission:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardUnitForOneStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->RewardUnitForOneStep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "X"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->RewardUnitForOneStep:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->RewardUnitForOneStep:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->UnknownError:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "\uc8c4\uc1a1\ud569\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694."

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Language;->UnknownError:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Language;->UnknownError:Ljava/lang/String;

    return-object v0
.end method

.method public setAlreadyParticipated(Ljava/lang/String;)V
    .locals 0
    .param p1, "alreadyParticipated"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->AlreadyParticipated:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setAnotherAppParticipate(Ljava/lang/String;)V
    .locals 0
    .param p1, "anotherAppParticipate"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->AnotherAppParticipate:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCanNotParticipate(Ljava/lang/String;)V
    .locals 0
    .param p1, "canNotParticipate"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->CanNotParticipate:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFirstUnitForOneStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstUnitForOneStep"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->FirstUnitForOneStep:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setIsComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "isComplete"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->IsComplete:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setMission(Ljava/lang/String;)V
    .locals 0
    .param p1, "mission"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->Mission:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRewardUnitForOneStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardUnitForOneStep"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->RewardUnitForOneStep:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setUnknownError(Ljava/lang/String;)V
    .locals 0
    .param p1, "unknownError"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Language;->UnknownError:Ljava/lang/String;

    .line 62
    return-void
.end method
