.class public Lcom/igaworks/dao/CPEPromotionImpressionDAO;
.super Ljava/lang/Object;
.source "CPEPromotionImpressionDAO.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CPE_PROMOTION_IMPRESSION_SP_NAME:Ljava/lang/String; = "promotion_impression_sp"

.field public static final SP_CAMPAIGN_KEY:Ljava/lang/String; = "campaign_key"

.field public static final SP_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final SP_RESOURCE_KEY:Ljava/lang/String; = "resource_key"

.field public static final SP_SPACE_KEY:Ljava/lang/String; = "space_key"

.field protected static promotionImpressionEditor:Landroid/content/SharedPreferences$Editor;

.field protected static promotionImpressionSP:Landroid/content/SharedPreferences;

.field protected static singleton:Lcom/igaworks/dao/CPEPromotionImpressionDAO;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/dao/CPEPromotionImpressionDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/CPEPromotionImpressionDAO;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionEditor:Landroid/content/SharedPreferences$Editor;

    .line 64
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/dao/CPEPromotionImpressionDAO;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->singleton:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    invoke-direct {v0}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;-><init>()V

    sput-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->singleton:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    .line 45
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->singleton:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "promotion_impression_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionSP:Landroid/content/SharedPreferences;

    .line 55
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->promotionImpressionSP:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public clearImpressionData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;-><init>(Lcom/igaworks/dao/CPEPromotionImpressionDAO;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public getImpressionData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const-string v8, "IGAW_QA"

    const-string v9, "Pls update Adbrix SDK to latest version"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 72
    .local v7, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 75
    .local v5, "record":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->clearImpressionData(Landroid/content/Context;)V

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getImpressionData(ZLandroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 83
    .local v2, "impressionTrackingTask":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 85
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when getting impression: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "impressionTrackingTask":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    :cond_1
    :goto_1
    return-object v6

    .line 87
    .restart local v2    # "impressionTrackingTask":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    :cond_2
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 88
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 89
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v8}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    .end local v1    # "i":I
    .end local v2    # "impressionTrackingTask":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when geting impression tracking"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I
    .param p3, "resourceKey"    # I
    .param p4, "spaceKey"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 121
    invoke-static {}, Lcom/igaworks/util/CommonHelper;->GetKSTCreateAtAsString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "_createdAt":Ljava/lang/String;
    invoke-static {p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/igaworks/util/bolts_task/Task;

    .line 146
    return-void
.end method
