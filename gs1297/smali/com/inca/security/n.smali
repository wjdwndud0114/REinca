.class public Lcom/inca/security/n;
.super Ljava/lang/Object;
.source "s"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/l;,
        Lcom/inca/security/i;
    }
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:[S

.field public synthetic IIIiiiiIII:I

.field public synthetic IIiIIIIIii:[S

.field public synthetic IIiIIIIiIi:Lcom/inca/security/q;

.field public synthetic IIiIiIIIii:[S

.field public synthetic IIiiIiIIii:[S

.field public synthetic IiIIIiIIIi:Lcom/inca/security/i;

.field public synthetic IiIiIIIiIi:[Lcom/inca/security/p;

.field public synthetic IiIiIiiIii:Lcom/inca/security/i;

.field public synthetic IiiIiiiIiI:Lcom/inca/security/l;

.field public synthetic IiiiiIiiIi:[S

.field public synthetic iiIIIIIiiI:Lcom/inca/security/p;

.field public synthetic iiIIIiiiiI:I

.field public synthetic iiIIiIiIii:I

.field public synthetic iiIiIIIiiI:[S

.field public synthetic iiiIiiiiII:[S

.field public synthetic iiiiIIIiii:Lcom/inca/security/x;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0xc0

    const/4 v2, -0x1

    const/16 v1, 0xc

    const/4 v4, 0x4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/inca/security/x;

    invoke-direct {v0}, Lcom/inca/security/x;-><init>()V

    iput-object v0, p0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    .line 198
    new-instance v0, Lcom/inca/security/q;

    invoke-direct {v0}, Lcom/inca/security/q;-><init>()V

    iput-object v0, p0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    .line 201
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/inca/security/n;->IiiiiIiiIi:[S

    .line 63
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/inca/security/n;->IIiIiIIIii:[S

    .line 197
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/inca/security/n;->iiIiIIIiiI:[S

    .line 185
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/inca/security/n;->IIIIiiIiII:[S

    .line 28
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/inca/security/n;->IIiIIIIIii:[S

    .line 143
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/inca/security/n;->iiiIiiiiII:[S

    .line 184
    new-array v0, v4, [Lcom/inca/security/p;

    iput-object v0, p0, Lcom/inca/security/n;->IiIiIIIiIi:[Lcom/inca/security/p;

    const/4 v0, 0x0

    .line 172
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/inca/security/n;->IIiiIiIIii:[S

    .line 79
    new-instance v1, Lcom/inca/security/p;

    invoke-direct {v1, v4}, Lcom/inca/security/p;-><init>(I)V

    iput-object v1, p0, Lcom/inca/security/n;->iiIIIIIiiI:Lcom/inca/security/p;

    .line 11
    new-instance v1, Lcom/inca/security/i;

    invoke-direct {v1, p0}, Lcom/inca/security/i;-><init>(Lcom/inca/security/n;)V

    iput-object v1, p0, Lcom/inca/security/n;->IiIiIiiIii:Lcom/inca/security/i;

    .line 9
    new-instance v1, Lcom/inca/security/i;

    invoke-direct {v1, p0}, Lcom/inca/security/i;-><init>(Lcom/inca/security/n;)V

    iput-object v1, p0, Lcom/inca/security/n;->IiIIIiIIIi:Lcom/inca/security/i;

    .line 76
    new-instance v1, Lcom/inca/security/l;

    invoke-direct {v1, p0}, Lcom/inca/security/l;-><init>(Lcom/inca/security/n;)V

    iput-object v1, p0, Lcom/inca/security/n;->IiiIiiiIiI:Lcom/inca/security/l;

    .line 128
    iput v2, p0, Lcom/inca/security/n;->iiIIIiiiiI:I

    .line 24
    iput v2, p0, Lcom/inca/security/n;->IIIiiiiIII:I

    move v1, v0

    .line 136
    :goto_0
    if-ge v0, v4, :cond_0

    .line 191
    iget-object v2, p0, Lcom/inca/security/n;->IiIiIIIiIi:[Lcom/inca/security/p;

    new-instance v3, Lcom/inca/security/p;

    const/4 v0, 0x6

    invoke-direct {v3, v0}, Lcom/inca/security/p;-><init>(I)V

    add-int/lit8 v0, v1, 0x1

    aput-object v3, v2, v1

    move v1, v0

    .line 136
    goto :goto_0

    .line 158
    :cond_0
    return-void
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

    xor-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0xd

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public IiiiIIIIii()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v1, v0}, Lcom/inca/security/x;->IiiiIIIIii(Z)V

    .line 111
    iget-object v1, p0, Lcom/inca/security/n;->IiiiiIiiIi:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 77
    iget-object v1, p0, Lcom/inca/security/n;->iiiIiiiiII:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 36
    iget-object v1, p0, Lcom/inca/security/n;->IIiIiIIIii:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 129
    iget-object v1, p0, Lcom/inca/security/n;->iiIiIIIiiI:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 95
    iget-object v1, p0, Lcom/inca/security/n;->IIIIiiIiII:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 122
    iget-object v1, p0, Lcom/inca/security/n;->IIiIIIIIii:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 177
    iget-object v1, p0, Lcom/inca/security/n;->IIiiIiIIii:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 137
    iget-object v1, p0, Lcom/inca/security/n;->IiiIiiiIiI:Lcom/inca/security/l;

    invoke-virtual {v1}, Lcom/inca/security/l;->IiiiIIIIii()V

    move v1, v0

    .line 23
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/inca/security/n;->IiIiIIIiIi:[Lcom/inca/security/p;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/inca/security/p;->IiiiIIIIii()V

    move v1, v0

    .line 23
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/inca/security/n;->IiIiIiiIii:Lcom/inca/security/i;

    invoke-virtual {v0}, Lcom/inca/security/i;->IiiiIIIIii()V

    .line 75
    iget-object v0, p0, Lcom/inca/security/n;->IiIIIiIIIi:Lcom/inca/security/i;

    invoke-virtual {v0}, Lcom/inca/security/i;->IiiiIIIIii()V

    .line 90
    iget-object v0, p0, Lcom/inca/security/n;->iiIIIIIiiI:Lcom/inca/security/p;

    invoke-virtual {v0}, Lcom/inca/security/p;->IiiiIIIIii()V

    .line 74
    iget-object v0, p0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v0}, Lcom/inca/security/q;->IiiiIIIIii()V

    .line 64
    return-void
.end method

.method public IiiiIIIIii(I)Z
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 89
    if-gez p1, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget v1, p0, Lcom/inca/security/n;->iiIIIiiiiI:I

    if-eq v1, p1, :cond_0

    .line 116
    iput p1, p0, Lcom/inca/security/n;->iiIIIiiiiI:I

    .line 52
    iget v1, p0, Lcom/inca/security/n;->iiIIIiiiiI:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/inca/security/n;->IIIiiiiIII:I

    .line 4
    iget-object v1, p0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    iget v2, p0, Lcom/inca/security/n;->IIIiiiiIII:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inca/security/x;->IiiiIIIIii(I)V

    goto :goto_0
.end method

.method public IiiiIIIIii(III)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    if-gt p2, v2, :cond_0

    if-le p3, v2, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/inca/security/n;->IiiIiiiIiI:Lcom/inca/security/l;

    invoke-virtual {v1, p2, p1}, Lcom/inca/security/l;->IiiiIIIIii(II)V

    .line 187
    shl-int v1, v0, p3

    .line 71
    iget-object v2, p0, Lcom/inca/security/n;->IiIiIiiIii:Lcom/inca/security/i;

    invoke-virtual {v2, v1}, Lcom/inca/security/i;->IiiiIIIIii(I)V

    .line 18
    iget-object v2, p0, Lcom/inca/security/n;->IiIIIiIIIi:Lcom/inca/security/i;

    invoke-virtual {v2, v1}, Lcom/inca/security/i;->IiiiIIIIii(I)V

    .line 150
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/inca/security/n;->iiIIiIiIii:I

    goto :goto_0
.end method

.method public IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 17
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .param p3, "arg2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/inca/security/q;->IiiiIIIIii(Ljava/io/InputStream;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/io/OutputStream;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/n;->IiiiIIIIii()V

    .line 118
    invoke-static {}, Lcom/inca/security/b;->IiiiIIIIii()I

    move-result v10

    .line 62
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 382
    const-wide/16 v4, 0x0

    .line 265
    const/4 v3, 0x0

    move-wide v15, v4

    move v5, v7

    move v4, v8

    move v7, v9

    move v9, v10

    move-wide v10, v15

    .line 368
    .end local p0    # "this":Lcom/inca/security/n;
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v8, p3, v12

    if-ltz v8, :cond_0

    cmp-long v8, v10, p3

    if-gez v8, :cond_d

    .line 248
    :cond_0
    long-to-int v8, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/inca/security/n;->iiIIiIiIii:I

    and-int/2addr v12, v8

    .line 378
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->IiiiiIiiIi:[S

    shl-int/lit8 v14, v9, 0x4

    add-int/2addr v14, v12

    invoke-virtual {v8, v13, v14}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v8

    if-nez v8, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/n;->IiiIiiiIiI:Lcom/inca/security/l;

    long-to-int v12, v10

    invoke-virtual {v8, v12, v3}, Lcom/inca/security/l;->IiiiIIIIii(IB)Lcom/inca/security/m;

    move-result-object v3

    .line 361
    invoke-static {v9}, Lcom/inca/security/b;->IiiiIIIIii(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v12, v7}, Lcom/inca/security/x;->IiiiIIIIii(I)B

    move-result v12

    invoke-virtual {v3, v8, v12}, Lcom/inca/security/m;->IiiiIIIIii(Lcom/inca/security/q;B)B

    move-result v3

    move-object/from16 v2, p0

    .line 388
    .local v2, "this":Lcom/inca/security/n;
    :goto_1
    iget-object v8, v2, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v8, v3}, Lcom/inca/security/x;->IiiiIIIIii(B)V

    .line 421
    invoke-static {v9}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v12

    .line 460
    const-wide/16 v8, 0x1

    add-long/2addr v8, v10

    move-wide v10, v8

    move v9, v12

    .line 391
    goto :goto_0

    .line 216
    .end local v2    # "this":Lcom/inca/security/n;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v3, v8}, Lcom/inca/security/m;->IiiiIIIIii(Lcom/inca/security/q;)B

    move-result v3

    move-object/from16 v2, p0

    .line 388
    .restart local v2    # "this":Lcom/inca/security/n;
    goto :goto_1

    .line 232
    .end local v2    # "this":Lcom/inca/security/n;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/n;->IIiIiIIIii:[S

    invoke-virtual {v3, v8, v9}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    .line 335
    const/4 v8, 0x0

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->iiIiIIIiiI:[S

    invoke-virtual {v3, v13, v9}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v3

    if-nez v3, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->iiiIiiiiII:[S

    shl-int/lit8 v14, v9, 0x4

    add-int/2addr v14, v12

    invoke-virtual {v3, v13, v14}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v3

    if-nez v3, :cond_5

    .line 296
    invoke-static {v9}, Lcom/inca/security/b;->IiiiIIIIii(I)I

    move-result v8

    .line 404
    const/4 v3, 0x1

    move v9, v3

    move v15, v6

    move v6, v7

    move v7, v4

    move v4, v5

    move v5, v15

    .line 251
    :goto_2
    if-nez v9, :cond_9

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IiIIIiIIIi:Lcom/inca/security/i;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v3, v9, v12}, Lcom/inca/security/i;->IiiiIIIIii(Lcom/inca/security/q;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 390
    invoke-static {v8}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v8

    move v9, v8

    move v8, v6

    .line 431
    :goto_3
    int-to-long v12, v6

    cmp-long v6, v12, v10

    if-gez v6, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/n;->IIIiiiiIII:I

    if-lt v8, v6, :cond_c

    .line 263
    :cond_3
    const/4 v3, 0x0

    .line 442
    :goto_4
    return v3

    .line 281
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->IIIIiiIiII:[S

    invoke-virtual {v3, v13, v9}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v7

    :goto_5
    move v7, v4

    move v4, v3

    :cond_5
    move v3, v8

    move v15, v8

    move v8, v9

    move v9, v15

    move/from16 v16, v5

    move v5, v6

    move v6, v7

    move v7, v4

    move/from16 v4, v16

    .line 251
    goto :goto_2

    .line 384
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->IIiIIIIIii:[S

    invoke-virtual {v3, v13, v9}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    move v4, v5

    :goto_6
    move v5, v3

    move v3, v7

    .line 484
    goto :goto_5

    :cond_7
    move v3, v4

    move v4, v6

    move v6, v5

    .line 299
    goto :goto_6

    .line 318
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->IiIiIiiIii:Lcom/inca/security/i;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v3, v6, v12}, Lcom/inca/security/i;->IiiiIIIIii(Lcom/inca/security/q;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 344
    invoke-static {v9}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v8

    .line 479
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/n;->IiIiIIIiIi:[Lcom/inca/security/p;

    invoke-static {v3}, Lcom/inca/security/b;->IIiIIiIiIi(I)I

    move-result v9

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v6, v9}, Lcom/inca/security/p;->iIiIIiIIIi(Lcom/inca/security/q;)I

    move-result v6

    .line 336
    const/4 v9, 0x4

    if-lt v6, v9, :cond_9

    .line 365
    shr-int/lit8 v9, v6, 0x1

    add-int/lit8 v9, v9, -0x1

    .line 429
    and-int/lit8 v12, v6, 0x1

    or-int/lit8 v12, v12, 0x2

    shl-int/2addr v12, v9

    .line 371
    const/16 v13, 0xe

    if-ge v6, v13, :cond_a

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/n;->IIiiIiIIii:[S

    sub-int v6, v12, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-static {v13, v6, v14, v9}, Lcom/inca/security/p;->IiiiIIIIii([SILcom/inca/security/q;I)I

    move-result v6

    add-int/2addr v6, v12

    :cond_9
    move v9, v8

    move v8, v6

    .line 431
    goto/16 :goto_3

    .line 376
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v6, v9}, Lcom/inca/security/q;->IiiiIIIIii(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v12

    .line 433
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/n;->iiIIIIIiiI:Lcom/inca/security/p;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v9, v12}, Lcom/inca/security/p;->IiiiIIIIii(Lcom/inca/security/q;)I

    move-result v9

    add-int/2addr v6, v9

    .line 389
    if-gez v6, :cond_9

    .line 481
    const/4 v3, -0x1

    if-ne v6, v3, :cond_b

    move-object/from16 v2, p0

    .line 490
    .restart local v2    # "this":Lcom/inca/security/n;
    :goto_7
    iget-object v3, v2, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v3}, Lcom/inca/security/x;->IiiiIIIIii()V

    const/4 v3, 0x1

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v4}, Lcom/inca/security/x;->iIiIIiIIIi()V

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/n;->IIiIIIIiIi:Lcom/inca/security/q;

    invoke-virtual {v4}, Lcom/inca/security/q;->iIiIIiIIIi()V

    goto/16 :goto_4

    .line 218
    .end local v2    # "this":Lcom/inca/security/n;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 394
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    invoke-virtual {v6, v8, v3}, Lcom/inca/security/x;->IiiiIIIIii(II)V

    .line 338
    int-to-long v12, v3

    add-long/2addr v10, v12

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/n;->iiiiIIIiii:Lcom/inca/security/x;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/inca/security/x;->IiiiIIIIii(I)B

    move-result v3

    move v6, v5

    move v5, v4

    move v4, v7

    move v7, v8

    .line 258
    goto/16 :goto_0

    :cond_d
    move-object/from16 v2, p0

    .line 490
    .restart local v2    # "this":Lcom/inca/security/n;
    goto :goto_7
.end method

.method public IiiiIIIIii([B)Z
    .locals 9
    .param p1, "arg0"    # [B

    .prologue
    const/4 v0, 0x0

    .line 341
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 337
    rem-int/lit8 v4, v1, 0x9

    .line 305
    div-int/lit8 v1, v1, 0x9

    .line 452
    rem-int/lit8 v5, v1, 0x5

    .line 436
    div-int/lit8 v6, v1, 0x5

    move v1, v0

    move v2, v0

    move v3, v0

    .line 326
    :goto_1
    const/4 v7, 0x4

    if-ge v1, v7, :cond_2

    .line 466
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v7, v1, 0xff

    mul-int/lit8 v8, v2, 0x8

    add-int/lit8 v1, v2, 0x1

    shl-int v2, v7, v8

    add-int/2addr v2, v3

    move v3, v2

    move v2, v1

    .line 326
    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {p0, v4, v5, v6}, Lcom/inca/security/n;->IiiiIIIIii(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0, v3}, Lcom/inca/security/n;->IiiiIIIIii(I)Z

    move-result v0

    goto :goto_0
.end method
