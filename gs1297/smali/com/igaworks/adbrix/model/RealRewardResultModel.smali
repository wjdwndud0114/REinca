.class public Lcom/igaworks/adbrix/model/RealRewardResultModel;
.super Ljava/lang/Object;
.source "RealRewardResultModel.java"


# instance fields
.field private FailMsg:Ljava/lang/String;

.field private Result:Z

.field private ResultCode:I

.field private ResultMessage:Ljava/lang/String;

.field private RewardImage:Ljava/lang/String;

.field private RewardName:Ljava/lang/String;

.field private RewardQuantity:I

.field private SessionNo:J

.field private StatusCodes:I

.field private SuccessMsg:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "resultCode"    # I
    .param p3, "resultMessage"    # Ljava/lang/String;
    .param p4, "successMsg"    # Ljava/lang/String;
    .param p5, "failMsg"    # Ljava/lang/String;
    .param p6, "rewardName"    # Ljava/lang/String;
    .param p7, "rewardQuantity"    # I
    .param p8, "rewardImage"    # Ljava/lang/String;
    .param p9, "sessionNo"    # J
    .param p11, "statusCodes"    # I
    .param p12, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->Result:Z

    .line 27
    iput p2, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultCode:I

    .line 28
    iput-object p3, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultMessage:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SuccessMsg:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->FailMsg:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardName:Ljava/lang/String;

    .line 32
    iput p7, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardQuantity:I

    .line 33
    iput-object p8, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardImage:Ljava/lang/String;

    .line 34
    iput-wide p9, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SessionNo:J

    .line 35
    iput p11, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->StatusCodes:I

    .line 36
    iput-object p12, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->type:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getFailMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->FailMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultCode:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardImage:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardQuantity()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardQuantity:I

    return v0
.end method

.method public getSessionNo()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SessionNo:J

    return-wide v0
.end method

.method public getStatusCodes()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->StatusCodes:I

    return v0
.end method

.method public getSuccessMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SuccessMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->Result:Z

    return v0
.end method

.method public setFailMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "failMsg"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->FailMsg:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->Result:Z

    .line 101
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultCode:I

    .line 109
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->ResultMessage:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRewardImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardImage"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardImage:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setRewardQuantity(I)V
    .locals 0
    .param p1, "rewardQuantity"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->RewardQuantity:I

    .line 69
    return-void
.end method

.method public setSessionNo(J)V
    .locals 1
    .param p1, "sessionNo"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SessionNo:J

    .line 125
    return-void
.end method

.method public setStatusCodes(I)V
    .locals 0
    .param p1, "statusCodes"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->StatusCodes:I

    .line 45
    return-void
.end method

.method public setSuccessMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "successMsg"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->SuccessMsg:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/igaworks/adbrix/model/RealRewardResultModel;->type:Ljava/lang/String;

    .line 85
    return-void
.end method
