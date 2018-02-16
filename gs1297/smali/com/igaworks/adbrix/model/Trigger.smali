.class public Lcom/igaworks/adbrix/model/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"


# instance fields
.field private Activity:Ljava/lang/String;

.field private Continue:Z

.field private Count:I

.field private Group:Ljava/lang/String;

.field private Intervalmsec:J

.field private ResetData:I

.field private ResetType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetData:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "intervalMSec"    # J
    .param p6, "continuous"    # Z
    .param p7, "isProgressShow"    # Z
    .param p8, "progressTitle"    # Ljava/lang/String;
    .param p9, "progressMessage"    # Ljava/lang/String;
    .param p10, "resetType"    # Ljava/lang/String;
    .param p11, "resetData"    # I
    .param p12, "completeMessage"    # Ljava/lang/String;
    .param p13, "completeToastMSec"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Group:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Trigger;->Activity:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/igaworks/adbrix/model/Trigger;->Count:I

    .line 25
    iput-wide p4, p0, Lcom/igaworks/adbrix/model/Trigger;->Intervalmsec:J

    .line 26
    iput-boolean p6, p0, Lcom/igaworks/adbrix/model/Trigger;->Continue:Z

    .line 27
    iput-object p10, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetType:Ljava/lang/String;

    .line 28
    iput p11, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetData:I

    .line 29
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Trigger;->Activity:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/igaworks/adbrix/model/Trigger;->Count:I

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Trigger;->Group:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalMSec()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/igaworks/adbrix/model/Trigger;->Intervalmsec:J

    return-wide v0
.end method

.method public getResetData()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetData:I

    return v0
.end method

.method public getResetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetType:Ljava/lang/String;

    return-object v0
.end method

.method public isContinuous()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/Trigger;->Continue:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Activity:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setContinuous(Z)V
    .locals 0
    .param p1, "continuous"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Continue:Z

    .line 85
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Count:I

    .line 69
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Group:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setIntervalMSec(J)V
    .locals 1
    .param p1, "intervalHour"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/igaworks/adbrix/model/Trigger;->Intervalmsec:J

    .line 77
    return-void
.end method

.method public setResetData(I)V
    .locals 0
    .param p1, "resetData"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetData:I

    .line 45
    return-void
.end method

.method public setResetType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resetType"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Trigger;->ResetType:Ljava/lang/String;

    .line 37
    return-void
.end method
