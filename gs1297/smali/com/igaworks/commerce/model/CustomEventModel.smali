.class public Lcom/igaworks/commerce/model/CustomEventModel;
.super Ljava/lang/Object;
.source "CustomEventModel.java"


# instance fields
.field private eventName:Ljava/lang/String;

.field private mtime:J

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "item":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/igaworks/commerce/model/CustomEventModel;->eventName:Ljava/lang/String;

    .line 33
    :cond_0
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v5, "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 38
    .local v4, "obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 42
    .local v3, "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v1    # "item":Lorg/json/JSONObject;
    .restart local v3    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :try_start_1
    iput-object v5, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    .line 52
    .end local v3    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    const-string v6, "mtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    const-string v6, "mtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/igaworks/commerce/model/CustomEventModel;->mtime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "mtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/igaworks/commerce/model/CustomEventModel;->eventName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    .line 21
    iput-wide p3, p0, Lcom/igaworks/commerce/model/CustomEventModel;->mtime:J

    .line 22
    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/igaworks/commerce/model/CustomEventModel;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getMtime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/igaworks/commerce/model/CustomEventModel;->mtime:J

    return-wide v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    return-object v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/igaworks/commerce/model/CustomEventModel;->eventName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMtime(J)V
    .locals 1
    .param p1, "mtime"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/igaworks/commerce/model/CustomEventModel;->mtime:J

    .line 86
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    .line 78
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 95
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v3, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "name"

    iget-object v5, p0, Lcom/igaworks/commerce/model/CustomEventModel;->eventName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v2, "params":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/igaworks/commerce/model/CustomEventModel;->params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 104
    .local v1, "nvp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v1    # "nvp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 108
    .restart local v2    # "params":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v4, "mtime"

    iget-wide v6, p0, Lcom/igaworks/commerce/model/CustomEventModel;->mtime:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/igaworks/commerce/model/CustomEventModel;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
