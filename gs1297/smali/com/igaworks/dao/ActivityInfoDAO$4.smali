.class final Lcom/igaworks/dao/ActivityInfoDAO$4;
.super Ljava/lang/Object;
.source "ActivityInfoDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity_info_list:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$activity_info_list:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 102
    :try_start_0
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$activity_info_list:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 103
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/igaworks/dao/ActivityInfoDAO;->getActivityForReferralSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 104
    .local v5, "trackingEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 106
    .local v0, "aActivityObj":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v1, v0

    .end local v0    # "aActivityObj":Lorg/json/JSONObject;
    .local v1, "aActivityObj":Lorg/json/JSONObject;
    :goto_0
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .local v2, "activity":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v1    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v0    # "aActivityObj":Lorg/json/JSONObject;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "group"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v1    # "aActivityObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 112
    .end local v1    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v0    # "aActivityObj":Lorg/json/JSONObject;
    .local v3, "e":Lorg/json/JSONException;
    :goto_2
    :try_start_3
    invoke-interface {v5, v2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$context:Landroid/content/Context;

    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error occurred during callbackReferralTrackingADBrix : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 120
    .end local v0    # "aActivityObj":Lorg/json/JSONObject;
    .end local v2    # "activity":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "i":I
    .end local v5    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/igaworks/dao/ActivityInfoDAO$4;->val$context:Landroid/content/Context;

    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error occurred during restoreReferralTrackingInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v10, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 123
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    return-void

    .line 117
    .restart local v1    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :try_start_4
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 111
    .end local v1    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v0    # "aActivityObj":Lorg/json/JSONObject;
    .restart local v2    # "activity":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_2
.end method
