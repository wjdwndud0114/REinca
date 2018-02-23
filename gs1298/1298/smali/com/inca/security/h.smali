.class public Lcom/inca/security/h;
.super Lcom/inca/security/s;
.source "t"


# static fields
.field public static final synthetic IIiIiIIIii:I = 0x10000

.field private static final synthetic IiIiIiiIii:[I

.field public static final synthetic IiiiIIIiIi:I = 0x400

.field public static final synthetic iiIIIIIiiI:I = 0x10000

.field public static final synthetic iiIIiIIiII:I = 0x3fffffff

.field public static final synthetic iiIIiIiIii:I = 0x1

.field public static final synthetic iiiIIIIiII:I = 0x400

.field public static final synthetic iiiIiiiiII:I


# instance fields
.field public synthetic IIIiIIIiiI:Z

.field public synthetic IIIiiIIiii:I

.field public synthetic IIiIIIIiIi:[I

.field public synthetic IIiiIIIiIi:I

.field public synthetic IIiiiIIiII:I

.field public synthetic IiIIIiIIIi:[I

.field public synthetic IiiIiiiIiI:I

.field public synthetic IiiiIIiIII:I

.field public synthetic iIIIiiIIIi:I

.field public synthetic iiIiIIIiiI:I

.field public synthetic iiIiiIIIii:I

.field public synthetic iiiIiIIIII:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 398
    new-array v0, v6, [I

    sput-object v0, Lcom/inca/security/h;->IiIiIiiIii:[I

    move v0, v1

    move v2, v1

    .line 244
    :goto_0
    if-ge v0, v6, :cond_2

    move v0, v1

    move v3, v1

    move v4, v2

    .line 214
    :goto_1
    const/16 v5, 0x8

    if-ge v0, v5, :cond_1

    .line 259
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 471
    ushr-int/lit8 v0, v4, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    .line 214
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v0, v3

    goto :goto_1

    .line 257
    :cond_0
    ushr-int/lit8 v0, v4, 0x1

    goto :goto_2

    .line 489
    :cond_1
    sget-object v3, Lcom/inca/security/h;->IiIiIiiIii:[I

    add-int/lit8 v0, v2, 0x1

    aput v4, v3, v2

    move v2, v0

    .line 244
    goto :goto_0

    .line 304
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    const v0, 0x10400

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-direct {p0}, Lcom/inca/security/s;-><init>()V

    .line 138
    iput v4, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    .line 87
    iput v3, p0, Lcom/inca/security/h;->iiIiIIIiiI:I

    .line 124
    iput v4, p0, Lcom/inca/security/h;->IIiiIIIiIi:I

    .line 56
    iput-boolean v2, p0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    .line 58
    iput v4, p0, Lcom/inca/security/h;->iiiIiIIIII:I

    .line 117
    iput v1, p0, Lcom/inca/security/h;->iiIiiIIIii:I

    .line 22
    iput v0, p0, Lcom/inca/security/h;->IIIiiIIiii:I

    return-void
.end method


# virtual methods
.method public IIiIIiIiIi(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/inca/security/h;->iiIiIIIiiI:I

    return-void
.end method

.method public IiIIIIIIIi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Lcom/inca/security/s;->IiIIIIIIIi()V

    move v0, v1

    move v2, v1

    .line 78
    :goto_0
    iget v3, p0, Lcom/inca/security/h;->IIiiIIIiIi:I

    if-ge v0, v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    add-int/lit8 v0, v2, 0x1

    aput v1, v3, v2

    move v2, v0

    .line 78
    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, -0x1

    iput v1, p0, Lcom/inca/security/h;->IiiIiiiIiI:I

    .line 152
    invoke-virtual {p0, v0}, Lcom/inca/security/h;->IiiiIIIIii(I)V

    .line 119
    return-void
.end method

.method public IiIiiIiiII()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget v0, p0, Lcom/inca/security/h;->IiiIiiiIiI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/h;->IiiIiiiIiI:I

    iget v1, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    if-lt v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/inca/security/h;->IiiIiiiIiI:I

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/inca/security/s;->IiIiiIiiII()V

    .line 139
    iget v0, p0, Lcom/inca/security/h;->IiiiiIiiIi:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/inca/security/h;->iiiiIIiiII()V

    .line 8
    :cond_1
    return-void
.end method

.method public IiIiiIiiII(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 180
    if-le p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    .line 195
    iget-boolean v0, p0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    if-eqz v0, :cond_1

    .line 123
    iput v1, p0, Lcom/inca/security/h;->iiiIiIIIII:I

    .line 179
    const v0, 0x10400

    const/4 v1, 0x4

    iput v1, p0, Lcom/inca/security/h;->iiIiiIIIii:I

    .line 166
    iput v0, p0, Lcom/inca/security/h;->IIIiiIIiii:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 180
    goto :goto_0

    .line 16
    :cond_1
    iput v2, p0, Lcom/inca/security/h;->iiiIiIIIII:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/inca/security/h;->iiIiiIIIii:I

    .line 112
    iput v1, p0, Lcom/inca/security/h;->IIIiiIIiii:I

    goto :goto_1
.end method

.method public IiiiIIIIii([I)I
    .locals 21
    .param p1, "arg0"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IIiiiIIiII:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IIIiiiiIII:I

    if-gt v2, v3, :cond_6

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IIiiiIIiII:I

    .line 79
    :cond_0
    const/4 v8, 0x0

    .line 127
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    if-le v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    sub-int/2addr v3, v4

    .line 11
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    add-int v15, v4, v5

    .line 9
    const/4 v7, 0x1

    .line 102
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 29
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    if-eqz v6, :cond_8

    .line 24
    sget-object v4, Lcom/inca/security/h;->IiIiIiiIii:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v5, v5, v15

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v6, v15, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    .line 147
    and-int/lit16 v5, v4, 0x3ff

    .line 21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v9, v15, 0x2

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v4

    .line 83
    const v4, 0xffff

    and-int/2addr v4, v6

    .line 14
    sget-object v9, Lcom/inca/security/h;->IiIiIiiIii:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v11, v15, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0x5

    xor-int/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/inca/security/h;->IiiiIIiIII:I

    and-int/2addr v6, v9

    move-object/from16 v1, p0

    .line 17
    .end local p0    # "this":Lcom/inca/security/h;
    .local v1, "this":Lcom/inca/security/h;
    :goto_1
    iget-object v9, v1, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/inca/security/h;->IIIiiIIiii:I

    add-int/2addr v10, v6

    aget v10, v9, v10

    .line 35
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    if-eqz v9, :cond_11

    .line 89
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    aget v11, v9, v5

    .line 142
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    add-int/lit16 v12, v4, 0x400

    aget v9, v9, v12

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v13, v12, v5

    .line 73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    add-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iget v12, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v12, v5, v4

    .line 116
    if-le v11, v3, :cond_1

    .line 52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    add-int/2addr v5, v11

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v5, v5, v15

    if-ne v4, v5, :cond_1

    .line 3
    const/4 v7, 0x2

    const/4 v4, 0x1

    aput v7, p1, v8

    .line 148
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    const/4 v8, 0x2

    sub-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x1

    aput v5, p1, v4

    :cond_1
    move v5, v7

    move v4, v8

    .line 101
    if-le v9, v3, :cond_10

    .line 27
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v8, v8, v15

    if-ne v7, v8, :cond_10

    .line 2
    if-ne v9, v11, :cond_2

    .line 42
    add-int/lit8 v4, v4, -0x2

    .line 80
    :cond_2
    const/4 v5, 0x3

    add-int/lit8 v7, v4, 0x1

    aput v5, p1, v4

    .line 187
    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    add-int/lit8 v4, v7, 0x1

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, p1, v7

    move v7, v9

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    .line 150
    :goto_2
    if-eqz v5, :cond_3

    if-ne v7, v10, :cond_3

    .line 51
    const/4 v4, 0x1

    .line 107
    add-int/lit8 v5, v5, -0x2

    .line 37
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/h;->IIIiiIIiii:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v8, v7, v6

    .line 77
    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v6, 0x1

    .line 36
    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    shl-int/lit8 v8, v6, 0x1

    .line 122
    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    .line 140
    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    if-eqz v6, :cond_4

    .line 196
    if-le v10, v3, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v0, p0

    iget v11, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    add-int/2addr v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    add-int/2addr v11, v12

    aget-byte v6, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    add-int/2addr v12, v15

    aget-byte v11, v11, v12

    if-eq v6, v11, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    add-int/lit8 v6, v5, 0x1

    aput v4, p1, v5

    .line 74
    move-object/from16 v0, p0

    iget v11, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    add-int/lit8 v5, v6, 0x1

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, p1, v6

    .line 53
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->iiIiIIIiiI:I

    move v11, v8

    move v12, v9

    move v14, v10

    move v9, v7

    move v10, v7

    move/from16 v20, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v20

    .line 186
    :goto_4
    if-le v14, v3, :cond_5

    add-int/lit8 v8, v4, -0x1

    if-nez v4, :cond_9

    .line 62
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    const/4 v4, 0x0

    aput v4, v3, v11

    aput v4, v2, v12

    move v5, v6

    .line 407
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/h;->IiIiiIiiII()V

    .line 328
    .end local v1    # "this":Lcom/inca/security/h;
    :goto_6
    return v5

    .line 197
    .restart local p0    # "this":Lcom/inca/security/h;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IIIiiiiIII:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    sub-int/2addr v2, v3

    .line 185
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->iiIiiIIIii:I

    if-ge v2, v3, :cond_0

    const/4 v5, 0x0

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/h;->IiIiiIiiII()V

    goto :goto_6

    .line 127
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 191
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v6, v6, v15

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v10, v15, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v6, v9

    move-object/from16 v1, p0

    .end local p0    # "this":Lcom/inca/security/h;
    .restart local v1    # "this":Lcom/inca/security/h;
    goto/16 :goto_1

    .line 265
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    sub-int v16, v4, v14

    .line 368
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    move/from16 v0, v16

    if-gt v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    sub-int v4, v4, v16

    :goto_7
    shl-int/lit8 v13, v4, 0x1

    .line 252
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    add-int v17, v4, v14

    .line 271
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 361
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v18, v17, v4

    aget-byte v7, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v18, v0

    add-int v19, v15, v4

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    .line 387
    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v2, :cond_c

    .line 216
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v18, v17, v4

    aget-byte v7, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v18, v0

    add-int v19, v15, v4

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-eq v7, v0, :cond_a

    move v7, v5

    .line 421
    :goto_8
    if-ge v7, v4, :cond_e

    .line 391
    add-int/lit8 v7, v6, 0x1

    aput v4, p1, v6

    .line 483
    add-int/lit8 v6, v16, -0x1

    add-int/lit8 v5, v7, 0x1

    aput v6, p1, v7

    .line 286
    if-ne v4, v2, :cond_d

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v3, v3, v13

    aput v3, v2, v11

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    aput v3, v2, v12

    goto/16 :goto_5

    .line 368
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    sub-int v4, v4, v16

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    add-int/2addr v4, v7

    goto :goto_7

    :cond_c
    move v7, v5

    .line 421
    goto :goto_8

    :cond_d
    move v6, v5

    move v5, v4

    .line 485
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v16, v17, v4

    aget-byte v7, v7, v16

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    move-object/from16 v16, v0

    add-int v17, v15, v4

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_f

    .line 404
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aput v14, v7, v11

    .line 253
    add-int/lit8 v7, v13, 0x1

    .line 457
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v9, v9, v7

    move v11, v7

    move v14, v9

    move v9, v4

    move v4, v8

    .line 260
    goto/16 :goto_4

    .line 447
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aput v14, v7, v12

    .line 306
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v7, v7, v13

    move v10, v4

    move v12, v13

    move v14, v7

    move v4, v8

    .line 261
    goto/16 :goto_4

    :cond_10
    move v7, v11

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto/16 :goto_2

    :cond_11
    move v4, v7

    move v5, v8

    goto/16 :goto_3
.end method

.method public IiiiIIIIii([III)V
    .locals 5
    .param p1, "arg0"    # [I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x0

    .line 307
    move v1, v2

    move v4, v2

    .end local p1    # "arg0":[I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 410
    aget v1, p1, v4

    .line 395
    if-gt v1, p3, :cond_0

    move-object v0, p1

    .local v0, "arg0":[I
    move v1, v2

    .line 374
    :goto_1
    add-int/lit8 v3, v4, 0x1

    aput v1, v0, v4

    move v1, v3

    move v4, v3

    .line 307
    goto :goto_0

    .line 480
    .end local v0    # "arg0":[I
    :cond_0
    sub-int/2addr v1, p3

    move-object v0, p1

    .line 374
    .restart local v0    # "arg0":[I
    goto :goto_1

    .line 247
    .end local v0    # "arg0":[I
    :cond_1
    return-void
.end method

.method public IiiiIIIIii(IIII)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 86
    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_0

    .line 204
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 66
    :cond_0
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/inca/security/h;->iiIiIIIiiI:I

    .line 5
    add-int v0, p1, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    .line 163
    add-int v1, p1, p2

    add-int v2, p3, p4

    invoke-super {p0, v1, v2, v0}, Lcom/inca/security/s;->IiiiIIIIii(III)V

    .line 92
    iput p3, p0, Lcom/inca/security/h;->IIiiiIIiII:I

    .line 178
    add-int/lit8 v0, p1, 0x1

    .line 68
    iget v1, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    if-eq v1, v0, :cond_1

    .line 15
    iput v0, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    .line 125
    :cond_1
    const/high16 v0, 0x10000

    .line 202
    iget-boolean v1, p0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    if-eqz v1, :cond_3

    .line 13
    add-int/lit8 v0, p1, -0x1

    .line 206
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 59
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 167
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 69
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 192
    shr-int/lit8 v0, v0, 0x1

    .line 60
    const v1, 0xffff

    or-int/2addr v0, v1

    .line 54
    const/high16 v1, 0x1000000

    if-le v0, v1, :cond_2

    .line 109
    shr-int/lit8 v0, v0, 0x1

    .line 156
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lcom/inca/security/h;->IiiiIIiIII:I

    .line 47
    iget v0, p0, Lcom/inca/security/h;->IIIiiIIiii:I

    add-int/2addr v0, v1

    .line 39
    :cond_3
    iget v1, p0, Lcom/inca/security/h;->IIiiIIIiIi:I

    if-eq v0, v1, :cond_4

    .line 135
    iput v0, p0, Lcom/inca/security/h;->IIiiIIIiIi:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    .line 145
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iIiIIiIIIi(I)V
    .locals 17
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IIiiiIIiII:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IIIiiiiIII:I

    if-gt v2, v3, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IIiiiIIiII:I

    move-object/from16 v1, p0

    .line 344
    .local v1, "this":Lcom/inca/security/h;
    :goto_0
    iget v3, v1, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    if-le v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    sub-int/2addr v3, v4

    .line 479
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    add-int v13, v4, v5

    .line 429
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inca/security/h;->IIIiIIIiiI:Z

    if-eqz v4, :cond_5

    .line 234
    sget-object v4, Lcom/inca/security/h;->IiIiIiiIii:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v5, v5, v13

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v6, v13, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    .line 217
    and-int/lit16 v5, v4, 0x3ff

    .line 414
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v7, v6, v5

    .line 409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v6, v13, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    .line 376
    const v5, 0xffff

    and-int/2addr v5, v4

    .line 331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    add-int/lit16 v5, v5, 0x400

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v7, v6, v5

    .line 433
    sget-object v5, Lcom/inca/security/h;->IiIiIiiIii:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v7, v13, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x5

    xor-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiiIIiIII:I

    and-int/2addr v4, v5

    move-object/from16 v1, p0

    .line 218
    :goto_2
    iget-object v5, v1, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->IIIiiIIiii:I

    add-int/2addr v6, v4

    aget v8, v5, v6

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->IIIiiIIiii:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    aput v6, v5, v4

    .line 423
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 369
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    shl-int/lit8 v6, v4, 0x1

    .line 456
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->iiiIiIIIII:I

    .line 284
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->iiIiIIIiiI:I

    move v9, v6

    move v10, v7

    move v12, v8

    move v8, v5

    move v7, v5

    .line 239
    :goto_3
    if-le v12, v3, :cond_1

    add-int/lit8 v6, v4, -0x1

    if-nez v4, :cond_6

    .line 338
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    const/4 v4, 0x0

    aput v4, v3, v9

    aput v4, v2, v10

    move-object/from16 v1, p0

    .line 461
    :goto_4
    invoke-virtual {v1}, Lcom/inca/security/h;->IiIiiIiiII()V

    .line 354
    .end local v1    # "this":Lcom/inca/security/h;
    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 316
    return-void

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/h;->IIIiiiiIII:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    sub-int/2addr v2, v3

    .line 285
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/h;->iiIiiIIIii:I

    if-ge v2, v3, :cond_3

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/h;->IiIiiIiiII()V

    goto :goto_5

    :cond_3
    move-object/from16 v1, p0

    .line 344
    .restart local v1    # "this":Lcom/inca/security/h;
    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 481
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/lit8 v6, v13, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 490
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IiiiiIiiIi:I

    sub-int/2addr v4, v12

    .line 400
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    if-gt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    sub-int v4, v5, v4

    :goto_6
    shl-int/lit8 v11, v4, 0x1

    .line 291
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/h;->IIiiIiIIii:I

    add-int v14, v4, v12

    .line 225
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v15, v14, v4

    aget-byte v5, v5, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v16, v13, v4

    aget-byte v15, v15, v16

    if-ne v5, v15, :cond_a

    .line 341
    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v2, :cond_9

    .line 345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v15, v14, v4

    aget-byte v5, v5, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v16, v13, v4

    aget-byte v15, v15, v16

    if-eq v5, v15, :cond_7

    move v5, v4

    .line 337
    :goto_7
    if-ne v5, v2, :cond_a

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v3, v3, v11

    aput v3, v2, v9

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    add-int/lit8 v4, v11, 0x1

    aget v3, v3, v4

    aput v3, v2, v10

    move-object/from16 v1, p0

    .line 491
    goto/16 :goto_4

    .line 400
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->IiiIiiiIiI:I

    sub-int v4, v5, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/h;->iIIIiiIIIi:I

    add-int/2addr v4, v5

    goto :goto_6

    :cond_9
    move v5, v4

    .line 337
    goto :goto_7

    .line 346
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int/2addr v14, v4

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/h;->IIiIiIIIii:[B

    add-int v15, v13, v4

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    if-ge v5, v14, :cond_b

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aput v12, v5, v9

    .line 348
    add-int/lit8 v5, v11, 0x1

    .line 313
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v7, v7, v5

    move v9, v5

    move v12, v7

    move v7, v4

    move v4, v6

    .line 276
    goto/16 :goto_3

    .line 283
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aput v12, v5, v10

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    aget v5, v5, v11

    move v8, v4

    move v10, v11

    move v12, v5

    move v4, v6

    .line 411
    goto/16 :goto_3
.end method

.method public iiiiIIiiII()V
    .locals 3

    .prologue
    .line 235
    iget v0, p0, Lcom/inca/security/h;->IiiiiIiiIi:I

    iget v1, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    sub-int/2addr v0, v1

    .line 233
    iget-object v1, p0, Lcom/inca/security/h;->IiIIIiIIIi:[I

    iget v2, p0, Lcom/inca/security/h;->iIIIiiIIIi:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/inca/security/h;->IiiiIIIIii([III)V

    .line 401
    iget-object v1, p0, Lcom/inca/security/h;->IIiIIIIiIi:[I

    iget v2, p0, Lcom/inca/security/h;->IIiiIIIiIi:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/inca/security/h;->IiiiIIIIii([III)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/inca/security/h;->IiiiIIIIii(I)V

    .line 209
    return-void
.end method
