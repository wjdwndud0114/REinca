.class public Lcom/igaworks/adbrix/model/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"


# instance fields
.field private Engagement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Engagement;",
            ">;"
        }
    .end annotation
.end field

.field private Media:Lcom/igaworks/adbrix/model/Media;

.field private Promotion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private ReEngagement:Lcom/igaworks/adbrix/model/ReEngagement;

.field private RealRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RealReward;",
            ">;"
        }
    .end annotation
.end field

.field private Space:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Space;",
            ">;"
        }
    .end annotation
.end field

.field private ViralCPIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/ViralCPIModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/igaworks/adbrix/model/ReEngagement;Ljava/util/List;Ljava/util/List;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;)V
    .locals 0
    .param p3, "reEngagement"    # Lcom/igaworks/adbrix/model/ReEngagement;
    .param p6, "media"    # Lcom/igaworks/adbrix/model/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RealReward;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Engagement;",
            ">;",
            "Lcom/igaworks/adbrix/model/ReEngagement;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Space;",
            ">;",
            "Lcom/igaworks/adbrix/model/Media;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/ViralCPIModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "realRewards":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RealReward;>;"
    .local p2, "engagement":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    .local p4, "promotion":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    .local p5, "space":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Space;>;"
    .local p7, "viralCPIs":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/ViralCPIModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->RealRewards:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Schedule;->Engagement:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Schedule;->ReEngagement:Lcom/igaworks/adbrix/model/ReEngagement;

    .line 27
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Schedule;->Promotion:Ljava/util/List;

    .line 28
    iput-object p5, p0, Lcom/igaworks/adbrix/model/Schedule;->Space:Ljava/util/List;

    .line 29
    iput-object p6, p0, Lcom/igaworks/adbrix/model/Schedule;->Media:Lcom/igaworks/adbrix/model/Media;

    .line 30
    iput-object p7, p0, Lcom/igaworks/adbrix/model/Schedule;->ViralCPIs:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getEngagements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Engagement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->Engagement:Ljava/util/List;

    return-object v0
.end method

.method public getMedia()Lcom/igaworks/adbrix/model/Media;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->Media:Lcom/igaworks/adbrix/model/Media;

    return-object v0
.end method

.method public getPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->Promotion:Ljava/util/List;

    return-object v0
.end method

.method public getReEngagement()Lcom/igaworks/adbrix/model/ReEngagement;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->ReEngagement:Lcom/igaworks/adbrix/model/ReEngagement;

    return-object v0
.end method

.method public getRealRewards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RealReward;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->RealRewards:Ljava/util/List;

    return-object v0
.end method

.method public getSpaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Space;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->Space:Ljava/util/List;

    return-object v0
.end method

.method public getViralCPIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/ViralCPIModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Schedule;->ViralCPIs:Ljava/util/List;

    return-object v0
.end method

.method public setEngagements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Engagement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "engagements":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->Engagement:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setMedia(Lcom/igaworks/adbrix/model/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/igaworks/adbrix/model/Media;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->Media:Lcom/igaworks/adbrix/model/Media;

    .line 71
    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->Promotion:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setReEngagement(Lcom/igaworks/adbrix/model/ReEngagement;)V
    .locals 0
    .param p1, "reEngagement"    # Lcom/igaworks/adbrix/model/ReEngagement;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->ReEngagement:Lcom/igaworks/adbrix/model/ReEngagement;

    .line 87
    return-void
.end method

.method public setRealRewards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RealReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "realRewards":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RealReward;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->RealRewards:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setSpaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/Space;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "spaces":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Space;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->Space:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setViralCPIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/ViralCPIModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "viralCPIs":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/ViralCPIModel;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Schedule;->ViralCPIs:Ljava/util/List;

    .line 79
    return-void
.end method
