.class Lcom/tnkfactory/ad/gm;
.super Ljava/io/DataInputStream;

# interfaces
.implements Ljava/io/ObjectInput;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->d:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)[B
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->d:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tnkfactory/ad/gm;->d:[B

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->d:[B

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    const/16 v3, 0x7f

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-gt v0, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-gt v1, v3, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v3, :cond_2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x16

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    and-int/lit8 v1, v2, 0x7f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method protected a(I)Lcom/tnkfactory/ad/gr;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x3

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->c:Ljava/util/List;

    shr-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/gr;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->h()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v2, p1, 0x7

    const/4 v4, 0x7

    if-ne v2, v4, :cond_2

    :goto_1
    new-instance v2, Lcom/tnkfactory/ad/gr;

    invoke-direct {v2, v3, v0}, Lcom/tnkfactory/ad/gr;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shr-int/lit8 v0, p1, 0x3

    :goto_2
    if-ge v1, v0, :cond_1

    iget-object v3, v2, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Ljava/io/Externalizable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Externalizable;

    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not externalizable class:"

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

.method protected b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->a:Ljava/util/List;

    shr-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->a(I)Lcom/tnkfactory/ad/gr;

    move-result-object v3

    iget-object v0, v3, Lcom/tnkfactory/ad/gr;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, v3, Lcom/tnkfactory/ad/gr;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iget-boolean v1, v3, Lcom/tnkfactory/ad/gr;->b:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/gm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gm;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported class. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected c(I)Ljava/lang/Object;
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    shr-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()[I
    .locals 4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    shr-int/lit8 v2, v1, 0x1

    new-array v0, v2, [I

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, [I

    check-cast v0, [I

    :cond_1
    return-object v0
.end method

.method protected e()[J
    .locals 6

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    shr-int/lit8 v2, v1, 0x1

    new-array v0, v2, [J

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, [J

    check-cast v0, [J

    :cond_1
    return-object v0
.end method

.method protected f()[D
    .locals 6

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    shr-int/lit8 v2, v1, 0x1

    new-array v0, v2, [D

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readDouble()D

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, [D

    check-cast v0, [D

    :cond_1
    return-object v0
.end method

.method protected g()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    shr-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/tnkfactory/ad/gm;->d(I)[B

    move-result-object v2

    invoke-virtual {p0, v2, v4, v1}, Lcom/tnkfactory/ad/gm;->readFully([BII)V

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected i()[B
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_0

    shr-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/tnkfactory/ad/gm;->readFully([BII)V

    :cond_0
    return-object v0
.end method

.method protected j()Ljava/util/Date;
    .locals 4

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/gm;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readDouble()D

    move-result-wide v0

    double-to-long v2, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readByte()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :pswitch_2
    return-object v0

    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->j()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->i()[B

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->d()[I

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->e()[J

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->f()[D

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/tnkfactory/ad/gm;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_f
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tnkfactory/ad/gm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
