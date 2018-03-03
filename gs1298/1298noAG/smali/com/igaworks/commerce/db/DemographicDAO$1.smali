.class final Lcom/igaworks/commerce/db/DemographicDAO$1;
.super Ljava/lang/Object;
.source "DemographicDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/DemographicDAO;->saveDemographic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 23
    :try_start_0
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$context:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 24
    const-string v5, "IGAW_QA"

    const-string v6, "save demo error >> context is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$context:Landroid/content/Context;

    const-string v6, "persistantDemoForTracking"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 29
    .local v4, "persistantDemoPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 30
    .local v3, "persistantDemoEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$key:Ljava/lang/String;

    iget-object v6, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$value:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IgawCommerce > save_demographic() >> key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$context:Landroid/content/Context;

    const-string v6, "demoForTracking"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "demoPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, "demoEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$key:Ljava/lang/String;

    iget-object v6, p0, Lcom/igaworks/commerce/db/DemographicDAO$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v0    # "demoEditor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "demoPref":Landroid/content/SharedPreferences;
    .end local v3    # "persistantDemoEditor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "persistantDemoPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
