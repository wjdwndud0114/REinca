.class public Lcom/igaworks/adpopcorn/api/APIResultModel;
.super Ljava/lang/Object;


# instance fields
.field private getOfferwallJsonResult:Ljava/lang/String;

.field private result:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->result:Z

    iput p2, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->resultCode:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->resultMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOfferwallJsonResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->getOfferwallJsonResult:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->result:Z

    return v0
.end method

.method public setOfferwallJsonResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/APIResultModel;->getOfferwallJsonResult:Ljava/lang/String;

    return-void
.end method
