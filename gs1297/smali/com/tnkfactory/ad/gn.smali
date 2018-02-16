.class Lcom/tnkfactory/ad/gn;
.super Ljava/io/DataOutputStream;

# interfaces
.implements Ljava/io/ObjectOutput;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->d:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;[B)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x80

    if-ge v4, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    if-ge v4, v0, :cond_1

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v5

    goto :goto_1

    :cond_1
    const/high16 v0, 0x10000

    if-ge v4, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p2, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v5, v4, 0x12

    and-int/lit8 v5, v5, 0x7

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p2, v0

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v5

    goto :goto_1

    :cond_3
    return v2
.end method

.method protected a(DZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/ad/gn;->writeDouble(D)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x200000

    if-ge p1, v0, :cond_2

    shr-int/lit8 v0, p1, 0xe

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_3

    shr-int/lit8 v0, p1, 0x16

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U29 out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(IZ)V
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, -0x10000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    int-to-long v0, p1

    const-wide/32 v2, 0xfffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    :cond_0
    const v0, 0x1fffffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    :goto_0
    return-void

    :cond_1
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/tnkfactory/ad/gn;->a(JZ)V

    goto :goto_0
.end method

.method protected a(JZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/ad/gn;->writeLong(J)V

    return-void
.end method

.method protected a(Ljava/io/Externalizable;)V
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/gr;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tnkfactory/ad/gr;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->a(Lcom/tnkfactory/ad/gr;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Number;)V
    .locals 5

    const/4 v4, 0x1

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/tnkfactory/ad/gn;->a(DZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x10000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xfffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/tnkfactory/ad/gn;->a(JZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/tnkfactory/ad/gn;->a(IZ)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->b(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;[B)I

    move-result v1

    shl-int/lit8 v2, v1, 0x1

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/tnkfactory/ad/gn;->write([BII)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a([Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/util/Date;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->writeDouble(D)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tnkfactory/ad/gr;

    invoke-direct {v0}, Lcom/tnkfactory/ad/gr;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput-object v3, v0, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(Lcom/tnkfactory/ad/gr;)Z

    move-result v2

    if-nez v2, :cond_0

    shl-int/lit8 v2, v4, 0x3

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/gn;->a(I)V

    iget-object v0, v0, Lcom/tnkfactory/ad/gr;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected a([B)V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tnkfactory/ad/gn;->write([BII)V

    :cond_0
    return-void
.end method

.method protected a([C)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected a([D)V
    .locals 4

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/tnkfactory/ad/gn;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([F)V
    .locals 4

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/tnkfactory/ad/gn;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([I)V
    .locals 3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const v2, 0x1fffffff

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([J)V
    .locals 4

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/tnkfactory/ad/gn;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([S)V
    .locals 3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    const v2, 0x1fffffff

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a([Z)V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->write(I)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->write(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected a(Lcom/tnkfactory/ad/gr;)Z
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/tnkfactory/ad/gn;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/tnkfactory/ad/gn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gn;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/tnkfactory/ad/gn;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)[B
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->d:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tnkfactory/ad/gn;->d:[B

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/gn;->d:[B

    return-object v0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gn;->write(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Number;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/util/Date;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([C)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, [B

    if-eqz v0, :cond_7

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([B)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, [I

    if-eqz v0, :cond_8

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([I)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, [S

    if-eqz v0, :cond_9

    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([S)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, [J

    if-eqz v0, :cond_a

    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([J)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([F)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, [D

    if-eqz v0, :cond_c

    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([D)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([Z)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_e

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, Ljava/io/Externalizable;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/io/Externalizable;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/io/Externalizable;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/gn;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
