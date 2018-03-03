.class public Lcom/igaworks/adbrix/model/ViralUrlModel;
.super Ljava/lang/Object;
.source "ViralUrlModel.java"


# instance fields
.field private isTest:Z

.field private result:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;

.field private trackingURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isTest"    # Z
    .param p2, "result"    # Z
    .param p3, "resultCode"    # I
    .param p4, "resultMsg"    # Ljava/lang/String;
    .param p5, "trackingURL"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->isTest:Z

    .line 19
    iput-boolean p2, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->result:Z

    .line 20
    iput p3, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultCode:I

    .line 21
    iput-object p4, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultMsg:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->trackingURL:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->trackingURL:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->result:Z

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->isTest:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->result:Z

    .line 39
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultCode:I

    .line 47
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->resultMsg:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->isTest:Z

    .line 31
    return-void
.end method

.method public setTrackingURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingURL"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ViralUrlModel;->trackingURL:Ljava/lang/String;

    .line 63
    return-void
.end method
