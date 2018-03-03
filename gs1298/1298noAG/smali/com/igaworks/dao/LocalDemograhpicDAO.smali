.class public Lcom/igaworks/dao/LocalDemograhpicDAO;
.super Ljava/lang/Object;
.source "LocalDemograhpicDAO.java"


# static fields
.field private static final LocalDemograhpicDAO_NAME:Ljava/lang/String; = "LocalDemograhpicDAO"

.field private static singleton:Lcom/igaworks/dao/LocalDemograhpicDAO;


# instance fields
.field private LocalDemograhpicSP:Landroid/content/SharedPreferences;

.field private editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "LocalDemograhpicDAO"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/LocalDemograhpicDAO;->LocalDemograhpicSP:Landroid/content/SharedPreferences;

    .line 20
    iget-object v0, p0, Lcom/igaworks/dao/LocalDemograhpicDAO;->LocalDemograhpicSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/LocalDemograhpicDAO;->editor:Landroid/content/SharedPreferences$Editor;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/igaworks/dao/LocalDemograhpicDAO;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/igaworks/dao/LocalDemograhpicDAO;->singleton:Lcom/igaworks/dao/LocalDemograhpicDAO;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/igaworks/dao/LocalDemograhpicDAO;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/LocalDemograhpicDAO;->singleton:Lcom/igaworks/dao/LocalDemograhpicDAO;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/igaworks/dao/LocalDemograhpicDAO;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/LocalDemograhpicDAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/dao/LocalDemograhpicDAO;->singleton:Lcom/igaworks/dao/LocalDemograhpicDAO;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/igaworks/dao/LocalDemograhpicDAO;->singleton:Lcom/igaworks/dao/LocalDemograhpicDAO;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public convertDemographicInfoFromSP2JSONObject(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "LocalDemograhpicDAO"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "demographicInfoInSP":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method

.method public save_demographic_local(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/igaworks/dao/LocalDemograhpicDAO;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v1, p0, Lcom/igaworks/dao/LocalDemograhpicDAO;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
