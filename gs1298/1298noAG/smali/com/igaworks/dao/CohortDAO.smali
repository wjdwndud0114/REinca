.class public Lcom/igaworks/dao/CohortDAO;
.super Ljava/lang/Object;
.source "CohortDAO.java"


# static fields
.field public static final COHORT_SP_NAME:Ljava/lang/String; = "cohorts"

.field public static cohort1:Ljava/lang/String;

.field public static cohort2:Ljava/lang/String;

.field public static cohort3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCohort(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v1, "custom_cohort_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort1:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 44
    sget-object v0, Lcom/igaworks/dao/CohortDAO;->cohort1:Ljava/lang/String;

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    const-string v1, "custom_cohort_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort2:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    sget-object v0, Lcom/igaworks/dao/CohortDAO;->cohort2:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "custom_cohort_3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort3:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/igaworks/dao/CohortDAO;->cohort3:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 48
    sget-object v0, Lcom/igaworks/dao/CohortDAO;->cohort3:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_3
    invoke-static {p0}, Lcom/igaworks/dao/CohortDAO;->getCohortSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "cohort":Ljava/lang/String;
    const-string v1, "custom_cohort_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    sput-object v0, Lcom/igaworks/dao/CohortDAO;->cohort1:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_4
    const-string v1, "custom_cohort_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    sput-object v0, Lcom/igaworks/dao/CohortDAO;->cohort2:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_5
    const-string v1, "custom_cohort_3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sput-object v0, Lcom/igaworks/dao/CohortDAO;->cohort3:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCohortSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v1, "cohorts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "referralActivityTrackingSP":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/igaworks/dao/CohortDAO;->getCohortSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static updateCohort(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v1, "IGAW_QA"

    const-string v2, "updateCohort : %s = %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    invoke-static {p0}, Lcom/igaworks/dao/CohortDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method
