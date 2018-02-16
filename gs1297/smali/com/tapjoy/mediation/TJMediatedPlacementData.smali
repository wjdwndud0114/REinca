.class public Lcom/tapjoy/mediation/TJMediatedPlacementData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Bundle;

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mediatedData"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->a:Ljava/lang/String;

    .line 72
    const-string v1, "description"

    const-string v2, "No description provided"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->b:Ljava/lang/String;

    .line 73
    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->c:Ljava/lang/String;

    .line 74
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->jsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->d:Landroid/os/Bundle;

    .line 75
    const-string v1, "next_call"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->e:Lorg/json/JSONObject;

    .line 76
    const-string v1, "fill_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->f:Ljava/lang/String;

    .line 77
    const-string v1, "no_fill_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->g:Ljava/lang/String;

    .line 78
    const-string v1, "current_card_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->h:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 80
    :catch_0
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyException;

    const-string v1, "Could not create MediatedPlacementData. Malformed or missing data."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 89
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFillURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCall()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNoFillURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tapjoy/mediation/TJMediatedPlacementData;->g:Ljava/lang/String;

    return-object v0
.end method
