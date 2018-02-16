.class Lcom/tnkfactory/ad/go;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/go;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatched. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUnsignedShort()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUnsignedShort()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeShort(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tnkfactory/ad/go;->a:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeShort(I)V

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/go;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
