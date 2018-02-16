.class final Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    instance-of v6, p2, Ljava/lang/Class;

    if-eqz v6, :cond_3

    move-object v2, p2

    .line 464
    check-cast v2, Ljava/lang/Class;

    .line 465
    .local v2, "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 466
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v5

    .line 467
    .local v0, "isStaticOrTopLevelClass":Z
    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    invoke-static {v4}, Lcom/igaworks/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 470
    .end local v0    # "isStaticOrTopLevelClass":Z
    .end local v2    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-nez p1, :cond_5

    const/4 v4, 0x0

    :goto_1
    iput-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 471
    invoke-static {p2}, Lcom/igaworks/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    iput-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 472
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    iput-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 473
    const/4 v3, 0x0

    .local v3, "t":I
    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v4

    .local v1, "length":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 474
    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/igaworks/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/igaworks/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 476
    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v5, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/igaworks/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v4, v3

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "length":I
    .end local v3    # "t":I
    .restart local v2    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move v0, v4

    .line 466
    goto :goto_0

    .line 470
    .end local v2    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-static {p1}, Lcom/igaworks/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    goto :goto_1

    .line 478
    .restart local v1    # "length":I
    .restart local v3    # "t":I
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 493
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 494
    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/igaworks/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 499
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 500
    invoke-static {v1}, Lcom/igaworks/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 498
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 504
    iget-object v3, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v3

    .line 505
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 506
    iget-object v3, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v3}, Lcom/igaworks/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 514
    :goto_0
    return-object v3

    .line 509
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 510
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v3}, Lcom/igaworks/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/igaworks/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 512
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/igaworks/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 514
    :cond_1
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
