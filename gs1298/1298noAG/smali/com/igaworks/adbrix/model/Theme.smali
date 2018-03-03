.class public Lcom/igaworks/adbrix/model/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# instance fields
.field private CirclePlayBtn:Ljava/lang/String;

.field private CloseBtn:Ljava/lang/String;

.field private FirstUnitBGColorForOneStep:Ljava/lang/String;

.field private MissionCheckOff:Ljava/lang/String;

.field private MissionCheckOn:Ljava/lang/String;

.field private PlayBtnAreaBG:Ljava/lang/String;

.field private RewardUnitBGColorForOneStep:Ljava/lang/String;

.field private SecondUnitBGColorForOneStep:Ljava/lang/String;

.field private SelectedAppArrow:Ljava/lang/String;

.field private SlideLeftBtn:Ljava/lang/String;

.field private SlideRightBtn:Ljava/lang/String;

.field private SquarePlayBtn:Ljava/lang/String;

.field private StepArrow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "circlePlayBtn"    # Ljava/lang/String;
    .param p2, "squarePlayBtn"    # Ljava/lang/String;
    .param p3, "missionCheckOff"    # Ljava/lang/String;
    .param p4, "missionCheckOn"    # Ljava/lang/String;
    .param p5, "playBtnAreaBG"    # Ljava/lang/String;
    .param p6, "slideLeftBtn"    # Ljava/lang/String;
    .param p7, "slideRightBtn"    # Ljava/lang/String;
    .param p8, "stepArrow"    # Ljava/lang/String;
    .param p9, "closeBtn"    # Ljava/lang/String;
    .param p10, "selectedAppArrow"    # Ljava/lang/String;
    .param p11, "firstUnitBGColorForOneStep"    # Ljava/lang/String;
    .param p12, "secondUnitBGColorForOneStep"    # Ljava/lang/String;
    .param p13, "rewardUnitBGColorForOneStep"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->CirclePlayBtn:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Theme;->SquarePlayBtn:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOff:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOn:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/igaworks/adbrix/model/Theme;->PlayBtnAreaBG:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/igaworks/adbrix/model/Theme;->SlideLeftBtn:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/igaworks/adbrix/model/Theme;->SlideRightBtn:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/igaworks/adbrix/model/Theme;->StepArrow:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/igaworks/adbrix/model/Theme;->CloseBtn:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lcom/igaworks/adbrix/model/Theme;->SelectedAppArrow:Ljava/lang/String;

    .line 42
    iput-object p11, p0, Lcom/igaworks/adbrix/model/Theme;->FirstUnitBGColorForOneStep:Ljava/lang/String;

    .line 43
    iput-object p12, p0, Lcom/igaworks/adbrix/model/Theme;->SecondUnitBGColorForOneStep:Ljava/lang/String;

    .line 44
    iput-object p13, p0, Lcom/igaworks/adbrix/model/Theme;->RewardUnitBGColorForOneStep:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCirclePlayBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CirclePlayBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/play_bt_circle.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CirclePlayBtn:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CirclePlayBtn:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CloseBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/popup_close_bt.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CloseBtn:Ljava/lang/String;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->CloseBtn:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstUnitBGColorForOneStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->FirstUnitBGColorForOneStep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "#24e6e8"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->FirstUnitBGColorForOneStep:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->FirstUnitBGColorForOneStep:Ljava/lang/String;

    return-object v0
.end method

.method public getMissionCheckOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOff:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/mission_check_off.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOff:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOff:Ljava/lang/String;

    return-object v0
.end method

.method public getMissionCheckOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/mission_check_on.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOn:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOn:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBtnAreaBG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->PlayBtnAreaBG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/bg_pt.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->PlayBtnAreaBG:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->PlayBtnAreaBG:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardUnitBGColorForOneStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->RewardUnitBGColorForOneStep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 181
    const-string v0, "#fbd348"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->RewardUnitBGColorForOneStep:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->RewardUnitBGColorForOneStep:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondUnitBGColorForOneStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SecondUnitBGColorForOneStep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "#24e6e8"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SecondUnitBGColorForOneStep:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SecondUnitBGColorForOneStep:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedAppArrow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SelectedAppArrow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/app_select_arrow.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SelectedAppArrow:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SelectedAppArrow:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideLeftBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideLeftBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/img_slide_left.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideLeftBtn:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideLeftBtn:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideRightBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideRightBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/img_slide_right.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideRightBtn:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SlideRightBtn:Ljava/lang/String;

    return-object v0
.end method

.method public getSquarePlayBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SquarePlayBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/play_bt_square.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SquarePlayBtn:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->SquarePlayBtn:Ljava/lang/String;

    return-object v0
.end method

.method public getStepArrow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->StepArrow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/step_arrow.png"

    iput-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->StepArrow:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Theme;->StepArrow:Ljava/lang/String;

    return-object v0
.end method

.method public setCirclePlayBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "circlePlayBtn"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->CirclePlayBtn:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCloseBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeBtn"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->CloseBtn:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setFirstUnitBGColorForOneStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstUnitBGColorForOneStep"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->FirstUnitBGColorForOneStep:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setMissionCheckOff(Ljava/lang/String;)V
    .locals 0
    .param p1, "missionCheckOff"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOff:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMissionCheckOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "missionCheckOn"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->MissionCheckOn:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPlayBtnAreaBG(Ljava/lang/String;)V
    .locals 0
    .param p1, "playBtnAreaBG"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->PlayBtnAreaBG:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRewardUnitBGColorForOneStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardUnitBGColorForOneStep"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->RewardUnitBGColorForOneStep:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setSecondUnitBGColorForOneStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondUnitBGColorForOneStep"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->SecondUnitBGColorForOneStep:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSelectedAppArrow(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedAppArrow"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->SelectedAppArrow:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setSlideLeftBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "slideLeftBtn"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->SlideLeftBtn:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSlideRightBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "slideRightBtn"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->SlideRightBtn:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSquarePlayBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "squarePlayBtn"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->SquarePlayBtn:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setStepArrow(Ljava/lang/String;)V
    .locals 0
    .param p1, "stepArrow"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Theme;->StepArrow:Ljava/lang/String;

    .line 133
    return-void
.end method
