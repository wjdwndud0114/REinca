.class public Lcom/igaworks/adbrix/model/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"


# instance fields
.field private CampaignKey:I

.field private CampaignType:I

.field private Display:Lcom/igaworks/adbrix/model/PromotionDisplay;

.field private IsFilterAlreadyInstalled:Z

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

.field private TargetAppScheme:Ljava/lang/String;

.field private isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Lcom/igaworks/adbrix/model/PromotionDisplay;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "CampaignType"    # I
    .param p2, "CampaignKey"    # I
    .param p4, "Display"    # Lcom/igaworks/adbrix/model/PromotionDisplay;
    .param p5, "TargetAppScheme"    # Ljava/lang/String;
    .param p6, "IsFilterAlreadyInstalled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;",
            "Lcom/igaworks/adbrix/model/PromotionDisplay;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "Segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignType:I

    .line 21
    iput p2, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignKey:I

    .line 22
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Promotion;->Segments:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Promotion;->Display:Lcom/igaworks/adbrix/model/PromotionDisplay;

    .line 24
    iput-object p5, p0, Lcom/igaworks/adbrix/model/Promotion;->TargetAppScheme:Ljava/lang/String;

    .line 25
    iput-boolean p6, p0, Lcom/igaworks/adbrix/model/Promotion;->IsFilterAlreadyInstalled:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getCampaignKey()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignKey:I

    return v0
.end method

.method public getCampaignType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignType:I

    return v0
.end method

.method public getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Promotion;->Display:Lcom/igaworks/adbrix/model/PromotionDisplay;

    return-object v0
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
    .line 53
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Promotion;->Segments:Ljava/util/List;

    return-object v0
.end method

.method public getTargetAppScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Promotion;->TargetAppScheme:Ljava/lang/String;

    return-object v0
.end method

.method public isIsFilterAlreadyInstalled()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/Promotion;->IsFilterAlreadyInstalled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/Promotion;->isVisible:Z

    return v0
.end method

.method public setCampaignKey(I)V
    .locals 0
    .param p1, "campaignKey"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignKey:I

    .line 50
    return-void
.end method

.method public setCampaignType(I)V
    .locals 0
    .param p1, "campaignType"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/igaworks/adbrix/model/Promotion;->CampaignType:I

    .line 42
    return-void
.end method

.method public setDisplay(Lcom/igaworks/adbrix/model/PromotionDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/igaworks/adbrix/model/PromotionDisplay;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Promotion;->Display:Lcom/igaworks/adbrix/model/PromotionDisplay;

    .line 66
    return-void
.end method

.method public setIsFilterAlreadyInstalled(Z)V
    .locals 0
    .param p1, "isFilterAlreadyInstalled"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/Promotion;->IsFilterAlreadyInstalled:Z

    .line 82
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
    .line 57
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Promotion;->Segments:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setTargetAppScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetAppScheme"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Promotion;->TargetAppScheme:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/Promotion;->isVisible:Z

    .line 34
    return-void
.end method
