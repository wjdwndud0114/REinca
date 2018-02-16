.class public Lcom/igaworks/adbrix/model/SpaceSegment;
.super Ljava/lang/Object;
.source "SpaceSegment.java"


# instance fields
.field private CampaignType:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "campaignType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->CampaignType:I

    .line 15
    iput-object p2, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->Segments:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public getCampaignType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->CampaignType:I

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
    .line 27
    iget-object v0, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->Segments:Ljava/util/List;

    return-object v0
.end method

.method public setCampaignType(I)V
    .locals 0
    .param p1, "campaignType"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->CampaignType:I

    .line 24
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
    .line 31
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/SpaceSegment;->Segments:Ljava/util/List;

    .line 32
    return-void
.end method
