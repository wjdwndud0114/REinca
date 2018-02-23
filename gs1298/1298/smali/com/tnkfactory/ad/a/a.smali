.class public Lcom/tnkfactory/ad/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:[B


# instance fields
.field private a:Lcom/tnkfactory/ad/a/c;

.field private b:Lcom/tnkfactory/ad/a/c;

.field private c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tnkfactory/ad/a/a;->d:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tnkfactory/ad/a/c;

    invoke-direct {v0, p0, v1}, Lcom/tnkfactory/ad/a/c;-><init>(Lcom/tnkfactory/ad/a/a;Lcom/tnkfactory/ad/a/b;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/a/a;->a:Lcom/tnkfactory/ad/a/c;

    new-instance v0, Lcom/tnkfactory/ad/a/c;

    invoke-direct {v0, p0, v1}, Lcom/tnkfactory/ad/a/c;-><init>(Lcom/tnkfactory/ad/a/a;Lcom/tnkfactory/ad/a/b;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tnkfactory/ad/a/a;->c:[I

    invoke-virtual {p0}, Lcom/tnkfactory/ad/a/a;->b()V

    return-void
.end method

.method private static a(IIIIIII)I
    .locals 3

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Lcom/tnkfactory/ad/a/c;[BII)V
    .locals 7

    const/16 v6, 0x40

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;Z)Z

    add-int v1, p4, p3

    array-length v2, p2

    if-le v1, v2, :cond_0

    array-length v1, p2

    sub-int p4, v1, p3

    :cond_0
    invoke-static {p1}, Lcom/tnkfactory/ad/a/c;->b(Lcom/tnkfactory/ad/a/c;)J

    move-result-wide v2

    const/4 v1, 0x3

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x3f

    invoke-static {p1}, Lcom/tnkfactory/ad/a/c;->b(Lcom/tnkfactory/ad/a/c;)J

    move-result-wide v2

    shl-int/lit8 v4, p4, 0x3

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;J)J

    rsub-int/lit8 v2, v1, 0x40

    if-lt p4, v2, :cond_3

    invoke-static {p1}, Lcom/tnkfactory/ad/a/c;->e(Lcom/tnkfactory/ad/a/c;)[B

    move-result-object v3

    invoke-static {p2, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/tnkfactory/ad/a/c;->e(Lcom/tnkfactory/ad/a/c;)[B

    move-result-object v1

    invoke-direct {p0, v1, v6, v0}, Lcom/tnkfactory/ad/a/a;->b([BII)[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/a/a;->a(Lcom/tnkfactory/ad/a/c;[I)V

    move v1, v2

    :goto_0
    add-int/lit8 v2, v1, 0x3f

    if-ge v2, p4, :cond_1

    invoke-direct {p0, p2, v6, v1}, Lcom/tnkfactory/ad/a/a;->b([BII)[I

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tnkfactory/ad/a/a;->a(Lcom/tnkfactory/ad/a/c;[I)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-ge v1, p4, :cond_2

    move v0, v1

    :goto_2
    if-ge v0, p4, :cond_2

    invoke-static {p1}, Lcom/tnkfactory/ad/a/c;->e(Lcom/tnkfactory/ad/a/c;)[B

    move-result-object v3

    add-int v4, v2, v0

    sub-int/2addr v4, v1

    add-int v5, v0, p3

    aget-byte v5, p2, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private static a(Lcom/tnkfactory/ad/a/c;[I)V
    .locals 30

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x7

    const v6, -0x28955b88

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v4

    const/4 v0, 0x1

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, -0x173848aa

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v3

    const/4 v0, 0x2

    aget v6, p1, v0

    const/16 v7, 0x11

    const v8, 0x242070db

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v2

    const/4 v0, 0x3

    aget v5, p1, v0

    const/16 v6, 0x16

    const v7, -0x3e423112

    invoke-static/range {v1 .. v7}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v5

    const/4 v0, 0x4

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, -0xa83f051

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v4

    const/4 v0, 0x5

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, 0x4787c62a

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v3

    const/4 v0, 0x6

    aget v6, p1, v0

    const/16 v7, 0x11

    const v8, -0x57cfb9ed

    invoke-static/range {v2 .. v8}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v6

    const/4 v0, 0x7

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, -0x2b96aff

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v11}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v5

    const/16 v0, 0x8

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, 0x698098d8

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v4

    const/16 v0, 0x9

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, -0x74bb0851

    invoke-static/range {v3 .. v9}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v7

    const/16 v0, 0xa

    aget v10, p1, v0

    const/16 v11, 0x11

    const v12, -0xa44f

    move v8, v4

    move v9, v5

    invoke-static/range {v6 .. v12}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v6

    const/16 v0, 0xb

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, -0x76a32842

    move v8, v4

    invoke-static/range {v5 .. v11}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v5

    const/16 v0, 0xc

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, 0x6b901122

    invoke-static/range {v4 .. v10}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v8

    const/16 v0, 0xd

    aget v11, p1, v0

    const/16 v12, 0xc

    const v13, -0x2678e6d

    move v9, v5

    move v10, v6

    invoke-static/range {v7 .. v13}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v7

    const/16 v0, 0xe

    aget v10, p1, v0

    const/16 v11, 0x11

    const v12, -0x5986bc72

    move v9, v5

    invoke-static/range {v6 .. v12}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v6

    const/16 v0, 0xf

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, 0x49b40821

    invoke-static/range {v5 .. v11}, Lcom/tnkfactory/ad/a/a;->a(IIIIIII)I

    move-result v9

    const/4 v0, 0x1

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, -0x9e1da9e

    move v10, v6

    move v11, v7

    invoke-static/range {v8 .. v14}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v8

    const/4 v0, 0x6

    aget v11, p1, v0

    const/16 v12, 0x9

    const v13, -0x3fbf4cc0

    move v10, v6

    invoke-static/range {v7 .. v13}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v7

    const/16 v0, 0xb

    aget v10, p1, v0

    const/16 v11, 0xe

    const v12, 0x265e5a51

    invoke-static/range {v6 .. v12}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v10

    const/4 v0, 0x0

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, -0x16493856

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v15}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v9

    const/4 v0, 0x5

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, -0x29d0efa3

    move v11, v7

    invoke-static/range {v8 .. v14}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v8

    const/16 v0, 0xa

    aget v11, p1, v0

    const/16 v12, 0x9

    const v13, 0x2441453

    invoke-static/range {v7 .. v13}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v11

    const/16 v0, 0xf

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, -0x275e197f

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v16}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v10

    const/4 v0, 0x4

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, -0x182c0438

    move v12, v8

    invoke-static/range {v9 .. v15}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v9

    const/16 v0, 0x9

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, 0x21e1cde6

    invoke-static/range {v8 .. v14}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v12

    const/16 v0, 0xe

    aget v15, p1, v0

    const/16 v16, 0x9

    const v17, -0x3cc8f82a

    move v13, v9

    move v14, v10

    invoke-static/range {v11 .. v17}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v11

    const/4 v0, 0x3

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, -0xb2af279

    move v13, v9

    invoke-static/range {v10 .. v16}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v10

    const/16 v0, 0x8

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, 0x455a14ed

    invoke-static/range {v9 .. v15}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v13

    const/16 v0, 0xd

    aget v16, p1, v0

    const/16 v17, 0x5

    const v18, -0x561c16fb

    move v14, v10

    move v15, v11

    invoke-static/range {v12 .. v18}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v12

    const/4 v0, 0x2

    aget v15, p1, v0

    const/16 v16, 0x9

    const v17, -0x3105c08

    move v14, v10

    invoke-static/range {v11 .. v17}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v11

    const/4 v0, 0x7

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, 0x676f02d9

    invoke-static/range {v10 .. v16}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v14

    const/16 v0, 0xc

    aget v17, p1, v0

    const/16 v18, 0x14

    const v19, -0x72d5b376

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v13 .. v19}, Lcom/tnkfactory/ad/a/a;->b(IIIIIII)I

    move-result v13

    const/4 v0, 0x5

    aget v16, p1, v0

    const/16 v17, 0x4

    const v18, -0x5c6be

    move v15, v11

    invoke-static/range {v12 .. v18}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v12

    const/16 v0, 0x8

    aget v15, p1, v0

    const/16 v16, 0xb

    const v17, -0x788e097f

    invoke-static/range {v11 .. v17}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v15

    const/16 v0, 0xb

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, 0x6d9d6122

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-static/range {v14 .. v20}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v14

    const/16 v0, 0xe

    aget v17, p1, v0

    const/16 v18, 0x17

    const v19, -0x21ac7f4

    move/from16 v16, v12

    invoke-static/range {v13 .. v19}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v13

    const/4 v0, 0x1

    aget v16, p1, v0

    const/16 v17, 0x4

    const v18, -0x5b4115bc

    invoke-static/range {v12 .. v18}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v16

    const/4 v0, 0x4

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, 0x4bdecfa9    # 2.9204306E7f

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-static/range {v15 .. v21}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v15

    const/4 v0, 0x7

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, -0x944b4a0

    move/from16 v17, v13

    invoke-static/range {v14 .. v20}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v14

    const/16 v0, 0xa

    aget v17, p1, v0

    const/16 v18, 0x17

    const v19, -0x41404390

    invoke-static/range {v13 .. v19}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v17

    const/16 v0, 0xd

    aget v20, p1, v0

    const/16 v21, 0x4

    const v22, 0x289b7ec6

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v16

    const/4 v0, 0x0

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, -0x155ed806

    move/from16 v18, v14

    invoke-static/range {v15 .. v21}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v15

    const/4 v0, 0x3

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, -0x2b10cf7b

    invoke-static/range {v14 .. v20}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v18

    const/4 v0, 0x6

    aget v21, p1, v0

    const/16 v22, 0x17

    const v23, 0x4881d05    # 3.2000097E-36f

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-static/range {v17 .. v23}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v17

    const/16 v0, 0x9

    aget v20, p1, v0

    const/16 v21, 0x4

    const v22, -0x262b2fc7

    move/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v16

    const/16 v0, 0xc

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, -0x1924661b

    invoke-static/range {v15 .. v21}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v19

    const/16 v0, 0xf

    aget v22, p1, v0

    const/16 v23, 0x10

    const v24, 0x1fa27cf8

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-static/range {v18 .. v24}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v18

    const/4 v0, 0x2

    aget v21, p1, v0

    const/16 v22, 0x17

    const v23, -0x3b53a99b

    move/from16 v20, v16

    invoke-static/range {v17 .. v23}, Lcom/tnkfactory/ad/a/a;->c(IIIIIII)I

    move-result v17

    const/4 v0, 0x0

    aget v20, p1, v0

    const/16 v21, 0x6

    const v22, -0xbd6ddbc

    invoke-static/range {v16 .. v22}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v20

    const/4 v0, 0x7

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, 0x432aff97

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-static/range {v19 .. v25}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v19

    const/16 v0, 0xe

    aget v22, p1, v0

    const/16 v23, 0xf

    const v24, -0x546bdc59

    move/from16 v21, v17

    invoke-static/range {v18 .. v24}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v18

    const/4 v0, 0x5

    aget v21, p1, v0

    const/16 v22, 0x15

    const v23, -0x36c5fc7

    invoke-static/range {v17 .. v23}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v21

    const/16 v0, 0xc

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, 0x655b59c3

    move/from16 v22, v18

    move/from16 v23, v19

    invoke-static/range {v20 .. v26}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v20

    const/4 v0, 0x3

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, -0x70f3336e

    move/from16 v22, v18

    invoke-static/range {v19 .. v25}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v19

    const/16 v0, 0xa

    aget v22, p1, v0

    const/16 v23, 0xf

    const v24, -0x100b83

    invoke-static/range {v18 .. v24}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v22

    const/4 v0, 0x1

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, -0x7a7ba22f

    move/from16 v23, v19

    move/from16 v24, v20

    invoke-static/range {v21 .. v27}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v21

    const/16 v0, 0x8

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, 0x6fa87e4f

    move/from16 v23, v19

    invoke-static/range {v20 .. v26}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v20

    const/16 v0, 0xf

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, -0x1d31920

    invoke-static/range {v19 .. v25}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v23

    const/4 v0, 0x6

    aget v26, p1, v0

    const/16 v27, 0xf

    const v28, -0x5cfebcec

    move/from16 v24, v20

    move/from16 v25, v21

    invoke-static/range {v22 .. v28}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v22

    const/16 v0, 0xd

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, 0x4e0811a1    # 5.7071418E8f

    move/from16 v24, v20

    invoke-static/range {v21 .. v27}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v21

    const/4 v0, 0x4

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, -0x8ac817e

    invoke-static/range {v20 .. v26}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v24

    const/16 v0, 0xb

    aget v27, p1, v0

    const/16 v28, 0xa

    const v29, -0x42c50dcb

    move/from16 v25, v21

    move/from16 v26, v22

    invoke-static/range {v23 .. v29}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v23

    const/4 v0, 0x2

    aget v26, p1, v0

    const/16 v27, 0xf

    const v28, 0x2ad7d2bb

    move/from16 v25, v21

    invoke-static/range {v22 .. v28}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v22

    const/16 v0, 0x9

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, -0x14792c6f

    invoke-static/range {v21 .. v27}, Lcom/tnkfactory/ad/a/a;->d(IIIIIII)I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int v3, v3, v24

    aput v3, v1, v2

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/2addr v0, v3

    aput v0, v1, v2

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int v2, v2, v22

    aput v2, v0, v1

    invoke-static/range {p0 .. p0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v2, v0, v1

    add-int v2, v2, v23

    aput v2, v0, v1

    return-void
.end method

.method private static a(J)[B
    .locals 8

    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    new-array v0, v6, [B

    const/4 v1, 0x0

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static a([II)[B
    .locals 5

    new-array v2, p1, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static b(IIIIIII)I
    .locals 3

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private b([BII)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lcom/tnkfactory/ad/a/a;->c:[I

    add-int v3, v0, p3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x3

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->c:[I

    return-object v0
.end method

.method private static c(IIIIIII)I
    .locals 3

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static d(IIIIIII)I
    .locals 3

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tnkfactory/ad/a/a;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->a:Lcom/tnkfactory/ad/a/c;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tnkfactory/ad/a/a;->a(Lcom/tnkfactory/ad/a/c;[BII)V

    return-void
.end method

.method public a()[B
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    invoke-static {v0}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    iget-object v1, p0, Lcom/tnkfactory/ad/a/a;->a:Lcom/tnkfactory/ad/a/c;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;Lcom/tnkfactory/ad/a/c;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    invoke-static {v0}, Lcom/tnkfactory/ad/a/c;->b(Lcom/tnkfactory/ad/a/c;)J

    move-result-wide v2

    const/4 v0, 0x3

    ushr-long v0, v2, v0

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    iget-object v1, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    sget-object v4, Lcom/tnkfactory/ad/a/a;->d:[B

    invoke-direct {p0, v1, v4, v6, v0}, Lcom/tnkfactory/ad/a/a;->a(Lcom/tnkfactory/ad/a/c;[BII)V

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/a/a;->a(J)[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/tnkfactory/ad/a/a;->a(Lcom/tnkfactory/ad/a/c;[BII)V

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    invoke-static {v0}, Lcom/tnkfactory/ad/a/c;->c(Lcom/tnkfactory/ad/a/c;)[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/a/a;->a([II)[B

    move-result-object v0

    return-object v0

    :cond_1
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->a:Lcom/tnkfactory/ad/a/c;

    invoke-static {v0}, Lcom/tnkfactory/ad/a/c;->d(Lcom/tnkfactory/ad/a/c;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/a/a;->b:Lcom/tnkfactory/ad/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/a/c;->a(Lcom/tnkfactory/ad/a/c;Z)Z

    return-void
.end method
