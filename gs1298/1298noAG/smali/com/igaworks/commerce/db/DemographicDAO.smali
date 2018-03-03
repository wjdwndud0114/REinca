.class public Lcom/igaworks/commerce/db/DemographicDAO;
.super Ljava/lang/Object;
.source "DemographicDAO.java"


# static fields
.field public static final KEY_HASHED_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_USN:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDemographic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 50
    :try_start_0
    const-string v3, "IGAW_QA"

    const-string v4, "save demo error >> context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :goto_0
    return-object v2

    .line 55
    :cond_1
    const-string v3, "persistantDemoForTracking"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "persistantDemoPref":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 61
    .end local v1    # "persistantDemoPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveDemographic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/commerce/db/DemographicDAO$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/commerce/db/DemographicDAO$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method
