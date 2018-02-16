.class public Lcom/inca/security/ib;
.super Ljava/lang/Object;
.source "fb"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/ac;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic IiiiIIIIii(J)J
    .locals 4
    .param p0, "arg0"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 96
    cmp-long v0, p0, v2

    if-gtz v0, :cond_0

    .line 161
    .end local p0    # "arg0":J
    :goto_0
    return-wide p0

    .restart local p0    # "arg0":J
    :cond_0
    sub-long v0, p0, v2

    invoke-static {v0, v1}, Lcom/inca/security/ib;->IiiiIIIIii(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    sub-long v2, p0, v2

    invoke-static {v2, v3}, Lcom/inca/security/ib;->IiiiIIIIii(J)J

    move-result-wide v2

    add-long p0, v0, v2

    goto :goto_0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x6b

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x43

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static IiiiIIIIii(J)Ljava/util/List;
    .locals 18
    .param p0, "arg0"    # J

    .prologue
    .line 97
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    const-wide/16 v10, 0x2

    .line 195
    const-wide/32 v2, 0x100000

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 179
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    sub-long v6, v12, v6

    sget v8, Lcom/inca/security/ac;->IiIiIIIiIi:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v10

    move-wide v4, v12

    .line 168
    :goto_0
    const-wide/16 v6, 0x1

    add-long v10, v2, v6

    invoke-static {v2, v3}, Lcom/inca/security/ib;->IiiiIIIIii(J)J

    move-result-wide v14

    .line 65
    cmp-long v2, v10, v14

    if-nez v2, :cond_0

    move-wide v2, v10

    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v2, 0x1fe2

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    const-wide/16 v6, 0x1fe2

    sub-long v6, p0, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 61
    cmp-long v2, v4, p0

    if-eqz v2, :cond_5

    .line 112
    sub-long v2, p0, v4

    const-wide/16 v6, 0x1fe2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 176
    sub-long v2, p0, v4

    const-wide/16 v6, 0x1fe2

    rem-long/2addr v2, v6

    sub-long v2, p0, v2

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1fe2

    rem-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 115
    new-instance v3, Lcom/inca/security/ac;

    sub-long v6, p0, v4

    const-wide/16 v10, 0x1fe2

    rem-long/2addr v6, v10

    sub-long v6, p0, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    sget v8, Lcom/inca/security/ac;->IIIiiiiIII:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v3, Lcom/inca/security/ac;

    sub-long v4, p0, v4

    const-wide/16 v6, 0x1fe2

    rem-long/2addr v4, v6

    sub-long v4, p0, v4

    const-wide/16 v6, 0x1

    sub-long v6, p0, v6

    sget v8, Lcom/inca/security/ac;->IiIiIIIiIi:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    .line 160
    :goto_1
    return-object v2

    .line 153
    :cond_1
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v6, 0x1fe2

    sub-long v6, p0, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    sget v8, Lcom/inca/security/ac;->IIIiiiiIII:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v4, 0x1fe2

    sub-long v4, p0, v4

    const-wide/16 v6, 0x1

    sub-long v6, p0, v6

    sget v8, Lcom/inca/security/ac;->IiIiIIIiIi:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    goto :goto_1

    .line 25
    :cond_2
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v6, 0x1

    sub-long v6, p0, v6

    sget v8, Lcom/inca/security/ac;->IiIiIIIiIi:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    goto :goto_1

    .line 130
    :cond_3
    const-wide/16 v2, 0x1fe2

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 32
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v6, 0x1fe2

    mul-long/2addr v6, v14

    add-long/2addr v6, v12

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    sget v8, Lcom/inca/security/ac;->IIIiiiiIII:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_4
    new-instance v3, Lcom/inca/security/ac;

    const-wide/16 v4, 0x1fe2

    mul-long/2addr v4, v14

    add-long/2addr v4, v12

    const-wide/16 v6, 0x1fe2

    mul-long/2addr v6, v14

    add-long/2addr v6, v12

    const-wide/16 v16, 0x1fe2

    add-long v6, v6, v16

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    sget v8, Lcom/inca/security/ac;->IiIiIIIiIi:I

    invoke-direct/range {v3 .. v8}, Lcom/inca/security/ac;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-wide/16 v2, 0x1fe2

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    const-wide/16 v4, 0x1fe2

    add-long/2addr v4, v2

    move-wide v2, v10

    .line 50
    goto/16 :goto_0

    :cond_5
    move-object v2, v9

    .line 12
    goto :goto_1
.end method

.method public static IiiiIIIIii(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "arg0"    # Ljava/util/List;

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/ac;

    .line 188
    invoke-virtual {v0}, Lcom/inca/security/ac;->IiIiiIiiII()J

    move-result-wide v4

    sget v3, Lcom/inca/security/ac;->IiIiIIIiIi:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    return-object v1
.end method

.method public static iIiIIiIIIi(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "arg0"    # Ljava/util/List;

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/ac;

    .line 178
    invoke-virtual {v0}, Lcom/inca/security/ac;->IiIiiIiiII()J

    move-result-wide v4

    sget v3, Lcom/inca/security/ac;->IIIiiiiIII:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    return-object v1
.end method
