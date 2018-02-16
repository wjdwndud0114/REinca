.class public Lcom/igaworks/adbrix/model/ScheduleContainer;
.super Ljava/lang/Object;
.source "ScheduleContainer.java"


# instance fields
.field private CheckSum:Ljava/lang/String;

.field private Schedule:Lcom/igaworks/adbrix/model/Schedule;


# direct methods
.method public constructor <init>(Lcom/igaworks/adbrix/model/Schedule;Ljava/lang/String;)V
    .locals 0
    .param p1, "schedule"    # Lcom/igaworks/adbrix/model/Schedule;
    .param p2, "checkSum"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->Schedule:Lcom/igaworks/adbrix/model/Schedule;

    .line 13
    iput-object p2, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->CheckSum:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->CheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedule()Lcom/igaworks/adbrix/model/Schedule;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->Schedule:Lcom/igaworks/adbrix/model/Schedule;

    return-object v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->CheckSum:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSchedule(Lcom/igaworks/adbrix/model/Schedule;)V
    .locals 0
    .param p1, "schedule"    # Lcom/igaworks/adbrix/model/Schedule;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ScheduleContainer;->Schedule:Lcom/igaworks/adbrix/model/Schedule;

    .line 22
    return-void
.end method
