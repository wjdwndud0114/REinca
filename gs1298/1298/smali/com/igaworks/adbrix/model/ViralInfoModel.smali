.class public Lcom/igaworks/adbrix/model/ViralInfoModel;
.super Ljava/lang/Object;
.source "ViralInfoModel.java"


# instance fields
.field private imageURL:Ljava/lang/String;

.field private isTest:Z

.field private itemName:Ljava/lang/String;

.field private itemQuantity:Ljava/lang/String;

.field private result:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isTest"    # Z
    .param p2, "result"    # Z
    .param p3, "resultCode"    # I
    .param p4, "resultMsg"    # Ljava/lang/String;
    .param p5, "imageURL"    # Ljava/lang/String;
    .param p6, "itemName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->isTest:Z

    .line 20
    iput-boolean p2, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->result:Z

    .line 21
    iput p3, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultCode:I

    .line 22
    iput-object p4, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultMsg:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->imageURL:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->itemName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->itemQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->result:Z

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->isTest:Z

    return v0
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->imageURL:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->itemName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setItemQuantity(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemQuantity"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->itemQuantity:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->result:Z

    .line 39
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultCode:I

    .line 45
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->resultMsg:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralInfoModel;->isTest:Z

    .line 33
    return-void
.end method
