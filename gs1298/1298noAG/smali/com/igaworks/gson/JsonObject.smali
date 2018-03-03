.class public final Lcom/igaworks/gson/JsonObject;
.super Lcom/igaworks/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/igaworks/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/igaworks/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/igaworks/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-nez p1, :cond_0

    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    sget-object p2, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 105
    invoke-direct {p0, p2}, Lcom/igaworks/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/JsonObject;->add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V

    .line 106
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .prologue
    .line 116
    invoke-direct {p0, p2}, Lcom/igaworks/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/JsonObject;->add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V

    .line 117
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/igaworks/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/JsonObject;->add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V

    .line 95
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lcom/igaworks/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/JsonObject;->add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V

    .line 84
    return-void
.end method

.method public bridge synthetic deepCopy()Lcom/igaworks/gson/JsonElement;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/igaworks/gson/JsonObject;->deepCopy()Lcom/igaworks/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/igaworks/gson/JsonObject;
    .locals 5

    .prologue
    .line 42
    new-instance v1, Lcom/igaworks/gson/JsonObject;

    invoke-direct {v1}, Lcom/igaworks/gson/JsonObject;-><init>()V

    .line 43
    .local v1, "result":Lcom/igaworks/gson/JsonObject;
    iget-object v2, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v2}, Lcom/igaworks/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v3}, Lcom/igaworks/gson/JsonElement;->deepCopy()Lcom/igaworks/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/gson/JsonObject;->add(Ljava/lang/String;Lcom/igaworks/gson/JsonElement;)V

    goto :goto_0

    .line 46
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/gson/JsonElement;>;"
    :cond_0
    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 210
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/igaworks/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igaworks/gson/JsonObject;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    .line 211
    invoke-virtual {v0, v1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/igaworks/gson/JsonArray;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/igaworks/gson/JsonObject;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/igaworks/gson/JsonPrimitive;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/igaworks/gson/JsonObject;->members:Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method
