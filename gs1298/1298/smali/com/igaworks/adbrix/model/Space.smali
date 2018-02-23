.class public Lcom/igaworks/adbrix/model/Space;
.super Ljava/lang/Object;
.source "Space.java"


# instance fields
.field private CampaignList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private SpaceKey:Ljava/lang/String;

.field private SpaceSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/SpaceSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "spaceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/SpaceSegment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "spaceSegments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/SpaceSegment;>;"
    .local p3, "campaignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Space;->SpaceKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Space;->SpaceSegments:Ljava/util/List;

    .line 16
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Space;->CampaignList:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public getCampaignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Space;->CampaignList:Ljava/util/List;

    return-object v0
.end method

.method public getSpaceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Space;->SpaceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/SpaceSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Space;->SpaceSegments:Ljava/util/List;

    return-object v0
.end method

.method public setCampaignList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "campaignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Space;->CampaignList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setSpaceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceKey"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Space;->SpaceKey:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSpaceSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/SpaceSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "spaceSegments":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/SpaceSegment;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Space;->SpaceSegments:Ljava/util/List;

    .line 33
    return-void
.end method
