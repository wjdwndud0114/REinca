.class public Lcom/igaworks/adbrix/model/EngagementDisplay;
.super Ljava/lang/Object;
.source "EngagementDisplay.java"


# instance fields
.field private CompleteMessage:Ljava/lang/String;

.field private CompleteToastmsec:I

.field private IsProgressShow:Z

.field private ProgressMessage:Ljava/lang/String;

.field private ProgressTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "isProgressShow"    # Z
    .param p2, "progressTitle"    # Ljava/lang/String;
    .param p3, "progressMessage"    # Ljava/lang/String;
    .param p4, "completeMessage"    # Ljava/lang/String;
    .param p5, "completeToastMSec"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->IsProgressShow:Z

    .line 18
    iput-object p2, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressTitle:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressMessage:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteMessage:Ljava/lang/String;

    .line 21
    iput p5, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteToastmsec:I

    .line 22
    return-void
.end method


# virtual methods
.method public getCompleteMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteToastMSec()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteToastmsec:I

    return v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isProgressShow()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->IsProgressShow:Z

    return v0
.end method

.method public setCompleteMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "completeMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteMessage:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCompleteToastMSec(I)V
    .locals 0
    .param p1, "completeToastMSec"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->CompleteToastmsec:I

    .line 62
    return-void
.end method

.method public setProgressMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressMessage"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressMessage:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setProgressShow(Z)V
    .locals 0
    .param p1, "isProgressShow"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->IsProgressShow:Z

    .line 30
    return-void
.end method

.method public setProgressTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressTitle"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/igaworks/adbrix/model/EngagementDisplay;->ProgressTitle:Ljava/lang/String;

    .line 38
    return-void
.end method
