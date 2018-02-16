.class public Lcom/igaworks/commerce/model/CommerceEventModel;
.super Ljava/lang/Object;
.source "CommerceEventModel.java"


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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "item":Lorg/json/JSONObject;
    const-string v7, "event_type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 38
    const-string v7, "event_type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->eventName:Ljava/lang/String;

    .line 41
    :cond_1
    const-string v7, "value"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v6, "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v7, "value"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 46
    .local v5, "obj":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 48
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 50
    .local v4, "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    .local v3, "key":Ljava/lang/String;
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 55
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v4    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :try_start_1
    iput-object v6, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    .line 60
    .end local v4    # "ki":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "vals":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    const-string v7, "mtime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    const-string v7, "mtime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->mtime:J
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
    .line 21
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->eventName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    .line 24
    iput-wide p3, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->mtime:J

    .line 25
    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getMtime()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->mtime:J

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
    .line 81
    iget-object v0, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    return-object v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->eventName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMtime(J)V
    .locals 1
    .param p1, "mtime"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->mtime:J

    .line 94
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
    .line 85
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    .line 86
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 103
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v3, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "name"

    iget-object v5, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->eventName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v2, "params":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 112
    .local v1, "nvp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "nvp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 116
    .restart local v2    # "params":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v4, "mtime"

    iget-wide v6, p0, Lcom/igaworks/commerce/model/CommerceEventModel;->mtime:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/igaworks/commerce/model/CommerceEventModel;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
