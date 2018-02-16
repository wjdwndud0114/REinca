.class public Lcom/igaworks/model/RestoreActivity;
.super Ljava/lang/Object;
.source "RestoreActivity.java"


# instance fields
.field private activity:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private no:I

.field private registDatetime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "no"    # I
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "registDatetime"    # Ljava/util/Calendar;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/igaworks/model/RestoreActivity;->no:I

    .line 18
    iput-object p2, p0, Lcom/igaworks/model/RestoreActivity;->group:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/igaworks/model/RestoreActivity;->activity:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/igaworks/model/RestoreActivity;->registDatetime:Ljava/util/Calendar;

    .line 21
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/igaworks/model/RestoreActivity;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/igaworks/model/RestoreActivity;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/igaworks/model/RestoreActivity;->no:I

    return v0
.end method

.method public getRegistDatetime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/igaworks/model/RestoreActivity;->registDatetime:Ljava/util/Calendar;

    return-object v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/igaworks/model/RestoreActivity;->activity:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/igaworks/model/RestoreActivity;->group:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNo(I)V
    .locals 0
    .param p1, "no"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/igaworks/model/RestoreActivity;->no:I

    .line 28
    return-void
.end method

.method public setRegistDatetime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "registDatetime"    # Ljava/util/Calendar;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/igaworks/model/RestoreActivity;->registDatetime:Ljava/util/Calendar;

    .line 46
    return-void
.end method
