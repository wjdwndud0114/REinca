.class public Lcom/igaworks/adbrix/json/StringConverter;
.super Ljava/lang/Object;
.source "StringConverter.java"

# interfaces
.implements Lcom/igaworks/gson/JsonSerializer;
.implements Lcom/igaworks/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/gson/JsonSerializer",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/igaworks/gson/JsonDeserializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/adbrix/json/StringConverter;->deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonDeserializationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonDeserializationContext;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Lcom/igaworks/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/igaworks/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/igaworks/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/igaworks/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string v0, ""

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/gson/JsonElement;->getAsJsonPrimitive()Lcom/igaworks/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonSerializationContext;)Lcom/igaworks/gson/JsonElement;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/adbrix/json/StringConverter;->serialize(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonSerializationContext;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonSerializationContext;)Lcom/igaworks/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/igaworks/gson/JsonSerializationContext;

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
