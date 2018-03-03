.class public Lcom/igaworks/dao/CrashDAO;
.super Ljava/lang/Object;
.source "CrashDAO.java"


# static fields
.field public static final CRASH_SP_NAME:Ljava/lang/String; = "igaw_crashes"

.field public static final EVENT_NO:Ljava/lang/String; = "eventNo"

.field public static final NUMBER_OF_EVENT_SP:Ljava/lang/String; = "numberOfEventSP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSP(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "edt":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v1, "igaw_crashes"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "crashSP":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getCrashes(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 62
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 74
    .local v2, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    const-string v5, "numberOfEventSP"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 78
    .local v3, "eventEdt":Landroid/content/SharedPreferences$Editor;
    const-string v5, "eventNo"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-object v4

    .line 81
    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    const/4 v4, 0x0

    .line 73
    :try_start_3
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 74
    .restart local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    const-string v5, "numberOfEventSP"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 78
    .restart local v3    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    const-string v5, "eventNo"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 81
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 73
    :try_start_4
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 74
    .restart local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    const-string v5, "numberOfEventSP"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 78
    .restart local v3    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    const-string v5, "eventNo"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 84
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    :goto_1
    throw v4

    .line 81
    :catch_3
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getCrashSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static updateCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 36
    :try_start_0
    const-string v4, "numberOfEventSP"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "eventNo"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 37
    .local v3, "eventNo":I
    if-le v3, v7, :cond_0

    .line 54
    .end local v3    # "eventNo":I
    :goto_0
    return-void

    .line 39
    .restart local v3    # "eventNo":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    const-string v4, "numberOfEventSP"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 41
    .local v2, "eventEdt":Landroid/content/SharedPreferences$Editor;
    const-string v4, "eventNo"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    const-string v4, "IGAW_QA"

    const-string v5, "updateCrash : %s = %s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {p0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    invoke-static {p0}, Lcom/igaworks/dao/CrashDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 47
    .local v1, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "eventEdt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "eventNo":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateCrash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v8, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
