.class public Lcom/tnkfactory/framework/vo/ValueObjectAssembler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/util/Map;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a(Ljava/lang/Object;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a(Ljava/lang/String;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->b(Ljava/lang/Object;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObjectAssembler;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
