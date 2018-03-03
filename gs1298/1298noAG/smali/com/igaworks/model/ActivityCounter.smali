.class public Lcom/igaworks/model/ActivityCounter;
.super Ljava/lang/Object;
.source "ActivityCounter.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private activity:Ljava/lang/String;

.field private activityCounterNo:I

.field private counter:I

.field private day:I

.field private dayUpdated:I

.field private group:Ljava/lang/String;

.field private hour:I

.field private hourUpdated:I

.field private month:I

.field private monthUpdated:I

.field private noCountingUpdateDatetime:Ljava/lang/String;

.field private registDatetime:Ljava/lang/String;

.field private updateDatetime:Ljava/lang/String;

.field private year:I

.field private yearUpdated:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activityCounterNo"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I
    .param p6, "group"    # Ljava/lang/String;
    .param p7, "activity"    # Ljava/lang/String;
    .param p8, "counter"    # I
    .param p9, "yearUpdated"    # I
    .param p10, "monthUpdated"    # I
    .param p11, "dayUpdated"    # I
    .param p12, "hourUpdated"    # I
    .param p13, "registDatetime"    # Ljava/lang/String;
    .param p14, "updateDatetime"    # Ljava/lang/String;
    .param p15, "noCountingUpdateDatetime"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->activityCounterNo:I

    .line 29
    iput p2, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    .line 30
    iput p3, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    .line 31
    iput p4, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    .line 32
    iput p5, p0, Lcom/igaworks/model/ActivityCounter;->hour:I

    .line 33
    iput-object p6, p0, Lcom/igaworks/model/ActivityCounter;->group:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/igaworks/model/ActivityCounter;->activity:Ljava/lang/String;

    .line 35
    iput p8, p0, Lcom/igaworks/model/ActivityCounter;->counter:I

    .line 36
    iput p9, p0, Lcom/igaworks/model/ActivityCounter;->yearUpdated:I

    .line 37
    iput p10, p0, Lcom/igaworks/model/ActivityCounter;->monthUpdated:I

    .line 38
    iput p11, p0, Lcom/igaworks/model/ActivityCounter;->dayUpdated:I

    .line 39
    iput p12, p0, Lcom/igaworks/model/ActivityCounter;->hourUpdated:I

    .line 40
    iput-object p13, p0, Lcom/igaworks/model/ActivityCounter;->registDatetime:Ljava/lang/String;

    .line 41
    iput-object p14, p0, Lcom/igaworks/model/ActivityCounter;->updateDatetime:Ljava/lang/String;

    .line 42
    iput-object p15, p0, Lcom/igaworks/model/ActivityCounter;->noCountingUpdateDatetime:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 150
    const/4 v1, 0x0

    .line 153
    .local v1, "ac":Lcom/igaworks/model/ActivityCounter;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/igaworks/model/ActivityCounter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->year:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->month:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->day:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->hour:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->hour:I

    if-ne v5, v6, :cond_2

    .line 163
    iget-object v5, p0, Lcom/igaworks/model/ActivityCounter;->registDatetime:Ljava/lang/String;

    iget-object v6, v1, Lcom/igaworks/model/ActivityCounter;->registDatetime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    move v3, v4

    .line 166
    goto :goto_0

    .line 170
    :cond_2
    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    invoke-virtual {v1}, Lcom/igaworks/model/ActivityCounter;->getYear()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->year:I

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->month:I

    if-gt v5, v6, :cond_0

    :cond_3
    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->year:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->month:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->day:I

    if-gt v5, v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->year:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->month:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->day:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/igaworks/model/ActivityCounter;->hour:I

    iget v6, v1, Lcom/igaworks/model/ActivityCounter;->hour:I

    if-gt v5, v6, :cond_0

    :cond_5
    move v3, v4

    .line 177
    goto :goto_0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/igaworks/model/ActivityCounter;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityCounterNo()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->activityCounterNo:I

    return v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->counter:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    return v0
.end method

.method public getDayUpdated()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->dayUpdated:I

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/igaworks/model/ActivityCounter;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->hour:I

    return v0
.end method

.method public getHourUpdated()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->hourUpdated:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    return v0
.end method

.method public getMonthUpdated()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->monthUpdated:I

    return v0
.end method

.method public getNoCountingUpdateDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/igaworks/model/ActivityCounter;->noCountingUpdateDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/igaworks/model/ActivityCounter;->registDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/igaworks/model/ActivityCounter;->updateDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    return v0
.end method

.method public getYearUpdated()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/igaworks/model/ActivityCounter;->yearUpdated:I

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/igaworks/model/ActivityCounter;->activity:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setActivityCounterNo(I)V
    .locals 0
    .param p1, "activityCounterNo"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->activityCounterNo:I

    .line 56
    return-void
.end method

.method public setCounter(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->counter:I

    .line 98
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->day:I

    .line 74
    return-void
.end method

.method public setDayUpdated(I)V
    .locals 0
    .param p1, "dayUpdated"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->dayUpdated:I

    .line 121
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/igaworks/model/ActivityCounter;->group:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->hour:I

    .line 80
    return-void
.end method

.method public setHourUpdated(I)V
    .locals 0
    .param p1, "hourUpdated"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->hourUpdated:I

    .line 129
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->month:I

    .line 68
    return-void
.end method

.method public setMonthUpdated(I)V
    .locals 0
    .param p1, "monthUpdated"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->monthUpdated:I

    .line 113
    return-void
.end method

.method public setNoCountingUpdateDatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "noCountingUpdateDatetime"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/igaworks/model/ActivityCounter;->noCountingUpdateDatetime:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRegistDatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "registDatetime"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/igaworks/model/ActivityCounter;->registDatetime:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setUpdateDatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateDatetime"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/igaworks/model/ActivityCounter;->updateDatetime:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->year:I

    .line 62
    return-void
.end method

.method public setYearUpdated(I)V
    .locals 0
    .param p1, "yearUpdated"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/igaworks/model/ActivityCounter;->yearUpdated:I

    .line 105
    return-void
.end method
