.class public Lcom/igaworks/dao/CPEImpressionDAOFactory;
.super Ljava/lang/Object;
.source "CPEImpressionDAOFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImpressionDAO(Ljava/lang/String;Ljava/lang/String;I)Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "scheduleType"    # I

    .prologue
    .line 9
    const-string v0, "impression"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0

    .line 14
    :cond_0
    const-string v0, "session_count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/igaworks/dao/CPESessionImpressionDAO;->getInstance()Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getInstance()Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v0

    goto :goto_0
.end method
