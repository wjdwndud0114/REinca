.class public Lcom/tnkfactory/framework/vo/ValueObject;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/util/List;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Ljava/util/Map;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->add(ILjava/util/Map;)V

    return-void
.end method

.method public add(ILjava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->get(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(ILjava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getDouble(ILjava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(ILjava/lang/String;D)D
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p3

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getDouble(ILjava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tnkfactory/framework/vo/ValueObject;->getDouble(ILjava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(ILjava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getFloat(ILjava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(ILjava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getFloat(ILjava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->getFloat(ILjava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(ILjava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(ILjava/lang/String;J)J
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p3

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 2

    new-instance v0, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v0}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->get(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Ljava/util/Map;)Z

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    :cond_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    aget-object v1, v0, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/framework/vo/ValueObject;->remove(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/util/Map;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public set(ILjava/lang/String;D)V
    .locals 1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(ILjava/lang/String;F)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(ILjava/lang/String;I)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(ILjava/lang/String;J)V
    .locals 1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->add(ILjava/util/Map;)V

    goto :goto_0
.end method

.method public set(ILjava/lang/String;Z)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;D)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tnkfactory/framework/vo/ValueObject;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
