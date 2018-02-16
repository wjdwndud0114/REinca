.class public final Lcom/igaworks/gson/JsonArray;
.super Lcom/igaworks/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/igaworks/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/igaworks/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/igaworks/gson/JsonElement;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lcom/igaworks/gson/JsonElement;)V
    .locals 1
    .param p1, "element"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Character;)V
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAll(Lcom/igaworks/gson/JsonArray;)V
    .locals 2
    .param p1, "array"    # Lcom/igaworks/gson/JsonArray;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-void
.end method

.method public contains(Lcom/igaworks/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/igaworks/gson/JsonArray;
    .locals 4

    .prologue
    .line 53
    iget-object v2, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    new-instance v1, Lcom/igaworks/gson/JsonArray;

    iget-object v2, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/igaworks/gson/JsonArray;-><init>(I)V

    .line 55
    .local v1, "result":Lcom/igaworks/gson/JsonArray;
    iget-object v2, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    .line 56
    .local v0, "element":Lcom/igaworks/gson/JsonElement;
    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->deepCopy()Lcom/igaworks/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/igaworks/gson/JsonArray;->add(Lcom/igaworks/gson/JsonElement;)V

    goto :goto_0

    .line 60
    .end local v0    # "element":Lcom/igaworks/gson/JsonElement;
    .end local v1    # "result":Lcom/igaworks/gson/JsonArray;
    :cond_0
    new-instance v1, Lcom/igaworks/gson/JsonArray;

    invoke-direct {v1}, Lcom/igaworks/gson/JsonArray;-><init>()V

    :cond_1
    return-object v1
.end method

.method public bridge synthetic deepCopy()Lcom/igaworks/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/igaworks/gson/JsonArray;->deepCopy()Lcom/igaworks/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 377
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/igaworks/gson/JsonArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igaworks/gson/JsonArray;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    return-object v0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/igaworks/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    return-object v0
.end method

.method public remove(Lcom/igaworks/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILcom/igaworks/gson/JsonElement;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/JsonElement;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/igaworks/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
