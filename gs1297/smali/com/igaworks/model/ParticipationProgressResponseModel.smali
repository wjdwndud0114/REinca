.class public Lcom/igaworks/model/ParticipationProgressResponseModel;
.super Ljava/lang/Object;
.source "ParticipationProgressResponseModel.java"


# instance fields
.field private Data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ParticipationProgressModel;",
            ">;"
        }
    .end annotation
.end field

.field private Result:Z

.field private ResultCode:I

.field private ResultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Z
    .param p2, "resultCode"    # I
    .param p3, "resultMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ParticipationProgressModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p4, "data":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ParticipationProgressModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Result:Z

    .line 18
    iput p2, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultCode:I

    .line 19
    iput-object p3, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultMessage:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Data:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ParticipationProgressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Data:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultCode:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Result:Z

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ParticipationProgressModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ParticipationProgressModel;>;"
    iput-object p1, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Data:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->Result:Z

    .line 29
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultCode:I

    .line 37
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/igaworks/model/ParticipationProgressResponseModel;->ResultMessage:Ljava/lang/String;

    .line 45
    return-void
.end method
