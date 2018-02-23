.class public Lcom/igaworks/adbrix/model/Engagement;
.super Ljava/lang/Object;
.source "Engagement.java"


# instance fields
.field private AllowDuplication:Z

.field private ConversionKey:I

.field private Display:Lcom/igaworks/adbrix/model/EngagementDisplay;

.field private ParentConversionKey:I

.field private Segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private Trigger:Lcom/igaworks/adbrix/model/Trigger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/igaworks/adbrix/model/Trigger;Lcom/igaworks/adbrix/model/EngagementDisplay;IIZ)V
    .locals 0
    .param p2, "trigger"    # Lcom/igaworks/adbrix/model/Trigger;
    .param p3, "displayData"    # Lcom/igaworks/adbrix/model/EngagementDisplay;
    .param p4, "conversionKey"    # I
    .param p5, "parentConversionKey"    # I
    .param p6, "allowDuplication"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;",
            "Lcom/igaworks/adbrix/model/Trigger;",
            "Lcom/igaworks/adbrix/model/EngagementDisplay;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Engagement;->Segments:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    .line 22
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Engagement;->Display:Lcom/igaworks/adbrix/model/EngagementDisplay;

    .line 23
    iput p4, p0, Lcom/igaworks/adbrix/model/Engagement;->ConversionKey:I

    .line 24
    iput p5, p0, Lcom/igaworks/adbrix/model/Engagement;->ParentConversionKey:I

    .line 25
    iput-boolean p6, p0, Lcom/igaworks/adbrix/model/Engagement;->AllowDuplication:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getConversionKey()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/igaworks/adbrix/model/Engagement;->ConversionKey:I

    return v0
.end method

.method public getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Engagement;->Display:Lcom/igaworks/adbrix/model/EngagementDisplay;

    return-object v0
.end method

.method public getParentConversionKey()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/igaworks/adbrix/model/Engagement;->ParentConversionKey:I

    return v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Engagement;->Segments:Ljava/util/List;

    return-object v0
.end method

.method public getTrigger()Lcom/igaworks/adbrix/model/Trigger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    return-object v0
.end method

.method public isAllowDuplication()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/Engagement;->AllowDuplication:Z

    return v0
.end method

.method public setAllowDuplication(Z)V
    .locals 0
    .param p1, "allowDuplication"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/Engagement;->AllowDuplication:Z

    .line 78
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Engagement;->Segments:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/igaworks/adbrix/model/Engagement;->ConversionKey:I

    .line 62
    return-void
.end method

.method public setDisplayData(Lcom/igaworks/adbrix/model/EngagementDisplay;)V
    .locals 0
    .param p1, "displayData"    # Lcom/igaworks/adbrix/model/EngagementDisplay;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Engagement;->Display:Lcom/igaworks/adbrix/model/EngagementDisplay;

    .line 54
    return-void
.end method

.method public setParentConversionKey(I)V
    .locals 0
    .param p1, "parentConversionKey"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/igaworks/adbrix/model/Engagement;->ParentConversionKey:I

    .line 70
    return-void
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Engagement;->Segments:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setTrigger(Lcom/igaworks/adbrix/model/Trigger;)V
    .locals 0
    .param p1, "trigger"    # Lcom/igaworks/adbrix/model/Trigger;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    const-string v0, ""

    .line 85
    .local v0, "tr":Ljava/lang/String;
    iget-object v1, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Trigger;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/model/Engagement;->Trigger:Lcom/igaworks/adbrix/model/Trigger;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Trigger;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    const-string v1, "ParentConversionKey : %d, ConversionKey : %d, Trigger : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/igaworks/adbrix/model/Engagement;->ParentConversionKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/igaworks/adbrix/model/Engagement;->ConversionKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
